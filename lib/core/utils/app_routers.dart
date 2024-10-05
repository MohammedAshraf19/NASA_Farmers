import 'package:go_router/go_router.dart';
import 'package:nasa_farmers/features/auth/presentation/views/choice_view.dart';
import 'package:nasa_farmers/features/auth/presentation/views/register_view.dart';
import 'package:nasa_farmers/features/home/presentation/views/home_view.dart';
import 'package:nasa_farmers/features/home/presentation/views/notification_view.dart';
import '../../features/auth/presentation/views/login_view.dart';
import '../../features/location/presentation/views/land_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';


abstract class AppRouters
{
  static const homeView = '/homeView';
  static const loginView = '/loginView';
  static const registerView = '/registerView';
  static const choiceView = '/choiceView';
  static const landView = '/landView';
  static const notificationView = '/notificationView';
  static final routers = GoRouter
    (
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: choiceView,
        builder: (context, state) {
          return const ChoiceView();
        },
      ),
      GoRoute(
        path: loginView,
        builder: (context, state) {
          return const LoginView();
        },
      ),
      GoRoute(
        path: registerView,
        builder: (context, state) {
          return const RegisterView();
        },
      ),
      GoRoute(
        path: landView,
        builder: (context, state) {
          return const LandView();
        },
      ),

      GoRoute(
        path: homeView,
        builder: (context, state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: notificationView,
        builder: (context, state) {
          return const NotificationView();
        },
      ),
    ],

  );
}