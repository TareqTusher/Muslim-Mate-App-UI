import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/presentation/widgets/home_page/daily_activity.dart';
import 'package:muslim_mate/presentation/widgets/home_page/last_read_section.dart';
import 'package:muslim_mate/presentation/widgets/home_page/qibla_mosque_section.dart';
import 'package:muslim_mate/presentation/widgets/home_page/top_header_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        leading: const SizedBox(),
        backgroundColor: AppColors.primary600,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.light,
        ),
      ),

      body: SingleChildScrollView(
        child: Stack(
          children: [
           const TopHeaderSection(),

            Padding(
              padding: const EdgeInsets.only(top: 250),
              child: Column(
                children: [
                  const LastReadSection(),
                  const QiblaMosqueSection(),
                  const SizedBox(height: 20),
                  const DailyActivitySection(),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
