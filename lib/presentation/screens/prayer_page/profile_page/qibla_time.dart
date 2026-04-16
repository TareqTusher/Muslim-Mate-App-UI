import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:math' as math;

class QiblaTimePage extends StatefulWidget {
  const QiblaTimePage({super.key});

  @override
  State<QiblaTimePage> createState() => _QiblaTimePageState();
}

class _QiblaTimePageState extends State<QiblaTimePage> {
  final _deviceSupport = FlutterQiblah.androidDeviceSensorSupport();

  /// 🔥 INIT LOCATION (VERY IMPORTANT)
  Future<void> _initLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      return;
    }

    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    if (permission == LocationPermission.deniedForever) {
      await Geolocator.openAppSettings();
      return;
    }

    /// 🔥 MUST CALL ONCE
    await Geolocator.getCurrentPosition(
      // ignore: deprecated_member_use
      desiredAccuracy: LocationAccuracy.high,
    );
  }

  @override
  void initState() {
    super.initState();
    _initLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Qibla"),
        centerTitle: true,
      ),
      body: FutureBuilder<bool?>(
        future: _deviceSupport,
        builder: (context, snapshot) {

       
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return const Center(child: Text("Error loading sensors"));
          }

          if (snapshot.data == false) {
            return const Center(child: Text("Device not supported"));
          }

          return const QiblaCompass();
        },
      ),
    );
  }
}

class QiblaCompass extends StatelessWidget {
  const QiblaCompass({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QiblahDirection>(
      stream: FlutterQiblah.qiblahStream,
      builder: (context, snapshot) {

        /// 🔥 IMPORTANT FIX HERE
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: Text("Initializing compass..."));
        }

        if (!snapshot.hasData) {
          return const Center(child: Text("No Qibla data"));
        }

        final qiblahDirection = snapshot.data!;

        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),

            const Text(
              "Position the device in a stable lying position",
              style: TextStyle(color: Colors.grey),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 30),

            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [

                  /// 🔵 COMPASS BACKGROUND
                  Transform.rotate(
                    angle: (qiblahDirection.direction * (math.pi / 180) * -1),
                    child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade200,
                      ),
                    ),
                  ),

                  /// 🔴 QIBLA ARROW
                  Transform.rotate(
                    angle: (qiblahDirection.qiblah * (math.pi / 180) * -1),
                    child: const Icon(
                      Icons.navigation,
                      size: 80,
                      color: Colors.teal,
                    ),
                  ),
                ],
              ),
            ),

            /// 🔢 DEGREE
            Text(
              "${qiblahDirection.qiblah.toStringAsFixed(0)}°",
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Your Location",
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 20),

            ElevatedButton.icon(
              onPressed: () {
                /// 🔄 refresh (rebuild)
                // ignore: invalid_use_of_protected_member
                (context as Element).reassemble();
              },
              icon: const Icon(Icons.refresh),
              label: const Text("Refresh"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        );
      },
    );
  }
}