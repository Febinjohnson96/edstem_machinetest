import 'package:edstem_machinetest/core/routes/app_routes.dart';
import 'package:edstem_machinetest/injector.dart';
import 'package:flutter/material.dart';

void main() {
  intializeInjector();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routeInformationParser: AppRoutes.appRoutes.routeInformationParser,
      routerDelegate: AppRoutes.appRoutes.routerDelegate,
      routeInformationProvider: AppRoutes.appRoutes.routeInformationProvider,
      debugShowCheckedModeBanner: false,
    );
  }
}
