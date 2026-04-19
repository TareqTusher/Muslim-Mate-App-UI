import 'package:muslim_mate/core/router/app_routes.dart';
import 'package:muslim_mate/core/router/router.dart';
import 'package:riverpod/legacy.dart';

class SplashScreenNotifier extends StateNotifier<dynamic> {
  SplashScreenNotifier() : super(0) {
    nextPage();
  }
  void nextPage() {
    Future.delayed(
      Duration(seconds: 3),
      () => router.push(AppRoutesPath.logInPage),
    );
  }
}

final splashScreenProvider =
    StateNotifierProvider<SplashScreenNotifier, dynamic>((ref) {
      return SplashScreenNotifier();
    });
