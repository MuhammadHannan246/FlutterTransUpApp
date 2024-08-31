
import 'package:flutter_transup_app/screens/forgot_password_screen.dart';
import 'package:flutter_transup_app/screens/onboarding_screen.dart';
import 'package:flutter_transup_app/screens/sign_in_screen.dart';
import 'package:flutter_transup_app/screens/sign_up_screen.dart';
import 'package:flutter_transup_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class PageRoutes {
  Map<String, WidgetBuilder> routes() {
    return {
      SplashScreen.routeName: (context) => const SplashScreen(),
      OnboardingScreen.routeName: (context) => const OnboardingScreen(),
      SignInScreen.routeName: (context) => const SignInScreen(),
      SignUpScreen.routeName: (context) => const SignUpScreen(),
      ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
    };
  }
}
