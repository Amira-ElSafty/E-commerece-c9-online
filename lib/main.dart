import 'package:flutter/material.dart';
import 'package:flutter_app_e_commerece_online/ui/auth/login/login_screen.dart';
import 'package:flutter_app_e_commerece_online/ui/auth/register/register_screen.dart';
import 'package:flutter_app_e_commerece_online/ui/home/home_screen/home_screen_view.dart';
import 'package:flutter_app_e_commerece_online/ui/splash/splash_screen.dart';
import 'package:flutter_app_e_commerece_online/ui/utils/app_theme.dart';
import 'package:flutter_app_e_commerece_online/ui/utils/my_bloc_observer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(430, 932),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: HomeScreenView.routeName,
            routes: {
              SplashScreen.routeName: (context) => SplashScreen(),
              LoginScreen.routeName: (context) => LoginScreen(),
              RegisterScreen.routeName: (context) => RegisterScreen(),
              HomeScreenView.routeName: (context) => HomeScreenView(),
            },
            theme: AppTheme.mainTheme,
          );
        });
  }
}
