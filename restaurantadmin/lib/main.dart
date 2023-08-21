import 'package:flutter/material.dart';

import 'navigation.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(const ResManager());
}

class ResManager extends StatelessWidget {
  const ResManager({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppNavigation().router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Poppins'),
        useMaterial3: true,
      ),
    );
  }
}
