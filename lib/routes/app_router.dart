import 'package:facebook_clone/feature/auth/pages/login_screen.dart';
import 'package:facebook_clone/feature/home/pages/facebook_home_page.dart';
import 'package:facebook_clone/feature/splash/meta_splash_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  // GoRouter configuration
  final GoRouter router = GoRouter(
    initialLocation: '/splash',
    routes: [
      // 1️⃣ Splash Screen
      GoRoute(
        path: '/splash',
        builder: (context, state) => const MetaSplashScreen(),
      ),

      // 2️⃣ Login Screen (new)
      GoRoute(path: '/login', builder: (context, state) => LoginScreen()),

      // 3️⃣ Home Screen
      GoRoute(
        path: '/home',
        builder: (context, state) => const FacebookHomePage(),
      ),
    ],
  );
}
