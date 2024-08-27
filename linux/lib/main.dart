import 'package:flutter_transup_app/routes/routes.dart';
import 'package:flutter_transup_app/screens/splash_screen.dart';
import 'package:flutter_transup_app/theme/theme_style.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return 
     MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'The App Accelerator',
        theme: ThemeStyle.lightTheme,
        initialRoute: SplashScreen.routeName,
        routes: PageRoutes().routes(),
      );
  }
}
