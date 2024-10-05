import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nasa_farmers/core/locations/location.dart';
import 'package:nasa_farmers/features/home/presentation/manager/home_cbit/home_cubit.dart';
import 'core/utils/api_services.dart';
import 'core/utils/app_routers.dart';
import 'core/utils/bloc_observer.dart';
import 'core/utils/cache_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  ApiServices.init();
  await CacheHelper().init();
  updateMyLocation();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomBarCubit(),
      child: MaterialApp.router(
        title: 'NASA Farmers',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouters.routers,
      ),
    );
  }
}
