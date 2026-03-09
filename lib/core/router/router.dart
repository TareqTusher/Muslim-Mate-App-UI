
import 'package:go_router/go_router.dart';
import 'package:muslim_mate/core/router/app_routes.dart';
import 'package:muslim_mate/core/common_components/common_bottom_nav.dart';
import 'package:muslim_mate/presentation/screens/login_page.dart';
import 'package:muslim_mate/presentation/screens/splash_screen.dart';

GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: AppRoutesPath.splashScreen,

      name: AppRoutesName.splashScreen,
      pageBuilder: (context, state) => NoTransitionPage(child: SplashScreen()),
    ),
 
 GoRoute(
      path: AppRoutesPath.logInPage,

      name: AppRoutesName.logInPage,
      pageBuilder: (context, state) => NoTransitionPage(child: LoginPage()),
    ),
  
GoRoute(
      path: AppRoutesPath.homePage,

      name: AppRoutesName.homePage,
      pageBuilder: (context, state) => NoTransitionPage(child: CommonBottonNav()),
    ),
  

  ],
);