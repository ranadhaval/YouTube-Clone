import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as se;
import 'package:get/get.dart';
import 'package:managerapp/routes/app_pages.dart';
import 'package:managerapp/routes/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          systemOverlayStyle:
              se.SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
        ),
      ),
      defaultTransition: Transition.rightToLeft,
      title: "task",
      getPages: AppPages.list,
       initialRoute: AppRoutes.SPLASH,
      debugShowCheckedModeBanner: false,
    );
  }
}
