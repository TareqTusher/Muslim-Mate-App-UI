import 'package:go_router/go_router.dart';
import 'package:muslim_mate/core/router/app_routes.dart';
import 'package:muslim_mate/core/common_components/common_bottom_nav.dart';
import 'package:muslim_mate/presentation/screens/discover_page/article_description.dart';
import 'package:muslim_mate/presentation/screens/discover_page/article_tab.dart';
import 'package:muslim_mate/presentation/screens/discover_page/dua_tab.dart';
import 'package:muslim_mate/presentation/screens/discover_page/family_description.dart';
import 'package:muslim_mate/presentation/screens/discover_page/family_page.dart';
import 'package:muslim_mate/presentation/screens/discover_page/law_description.dart';
import 'package:muslim_mate/presentation/screens/discover_page/law_tab.dart';
import 'package:muslim_mate/presentation/screens/discover_page/law_title.dart';
import 'package:muslim_mate/presentation/screens/discover_page/law_to_business.dart';
import 'package:muslim_mate/presentation/screens/login_page.dart';
import 'package:muslim_mate/presentation/screens/profile_page/nearest_mosque.dart';
import 'package:muslim_mate/presentation/screens/profile_page/profile_page.dart';
import 'package:muslim_mate/presentation/screens/profile_page/qibla_time.dart';
import 'package:muslim_mate/presentation/screens/profile_page/settings_page.dart';
import 'package:muslim_mate/presentation/screens/quran_page/quran_page.dart';
import 'package:muslim_mate/presentation/screens/quran_page/surah_tab.dart';
import 'package:muslim_mate/presentation/screens/splash_screen.dart';
import 'package:muslim_mate/presentation/screens/profile_page/edit_profile_page.dart';
import 'package:muslim_mate/presentation/widgets/quran_page/details_surah.dart';
import 'package:muslim_mate/presentation/widgets/quran_page/juz_tab_read_surah.dart';

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
      pageBuilder: (context, state) =>
          NoTransitionPage(child: CommonBottonNav()),
    ),
    // GoRoute(
    //   path: AppRoutesPath.articleDesc,

    //   name: AppRoutesName.articleDesc,
    //   pageBuilder: (context, state) =>
    //       NoTransitionPage(child: ArticleDescription()),
    // ),
    GoRoute(
      path: AppRoutesPath.familyPage,

      name: AppRoutesName.familyPage,
      pageBuilder: (context, state) => NoTransitionPage(child: FamilyPage()),
    ),
    GoRoute(
      path: AppRoutesPath.articleTab,

      name: AppRoutesName.articleTab,
      pageBuilder: (context, state) =>
          NoTransitionPage(child: ArticleTabContent()),
    ),

    GoRoute(
      path: AppRoutesPath.familyDescription,

      name: AppRoutesName.familyDescription,
      pageBuilder: (context, state) =>
          NoTransitionPage(child: FamilyDescription()),
    ),
    GoRoute(
      path: AppRoutesPath.duaTab,

      name: AppRoutesName.duaTab,
      pageBuilder: (context, state) => NoTransitionPage(child: DuaTab()),
    ),

    GoRoute(
      path: AppRoutesPath.lawTab,

      name: AppRoutesName.lawTab,
      pageBuilder: (context, state) => NoTransitionPage(child: LawTab()),
    ),


    GoRoute(
      path: AppRoutesPath.lawDesription,
      builder: (context, state) {
        final extra = state.extra as Map<String, dynamic>;
        return LawDescription(
          text: extra['title'],
          icons: extra['icon'],
          subTitleText: extra['laws'],
        );
      },
    ),



    GoRoute(
      path: AppRoutesPath.lawTitle,

      name: AppRoutesName.lawTitle,
      pageBuilder: (context, state) => NoTransitionPage(child: LawTitle()),
    ),
    GoRoute(
      path: AppRoutesPath.lawToBusiness,

      name: AppRoutesName.lawToBusiness,
      pageBuilder: (context, state) =>
          NoTransitionPage(child: LawToBusinesspage()),
    ),

 GoRoute(
      path: AppRoutesPath.quranPageSuraTab,

      name: AppRoutesName.quranPageSuraTab,
      pageBuilder: (context, state) =>
          NoTransitionPage(child: DetailsSurahWidget()),
    ),
 GoRoute(
      path: AppRoutesPath.suraTab,

      name: AppRoutesName.suraTab,
      pageBuilder: (context, state) =>
          NoTransitionPage(child: SurahTab()),
    ),

    GoRoute(
      path: AppRoutesPath.quranPage,

      name: AppRoutesName.quranPage,
      pageBuilder: (context, state) =>
          NoTransitionPage(child: QuranPage()),
    ),

      GoRoute(
      path: AppRoutesPath.editProfile,

      name: AppRoutesName.editProfile,
      pageBuilder: (context, state) =>
          NoTransitionPage(child: EditProfile()),
    ),

    GoRoute(
      path: AppRoutesPath.juzTabReadSurah,

      name: AppRoutesName.juzTabReadSurah,
      pageBuilder: (context, state) =>
          NoTransitionPage(child: JuzTabReadSurah()),
    ),

    GoRoute(
      path: AppRoutesPath.settingsPage,

      name: AppRoutesName.settingsPage,
      pageBuilder: (context, state) =>
          NoTransitionPage(child: SettingsPage()),
    ),

      GoRoute(
      path: AppRoutesPath.profilePage,

      name: AppRoutesName.profilePage,
      pageBuilder: (context, state) =>
          NoTransitionPage(child: ProfilePage()),
    ),

       GoRoute(
      path: AppRoutesPath.qiblaTimePage,

      name: AppRoutesName.qiblaTimePage,
      pageBuilder: (context, state) =>
          NoTransitionPage(child: QiblaTimePage()),
    ),

    
       GoRoute(
      path: AppRoutesPath.nearestMosque,

      name: AppRoutesName.nearestMosque,
      pageBuilder: (context, state) =>
          NoTransitionPage(child: NearestMosque()),
    ),
  ],
);
