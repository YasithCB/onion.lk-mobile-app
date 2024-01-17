import 'package:flutter/material.dart';
import 'package:user_mobile/ui/screens/sign_in_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onion.lk',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(216, 255, 212, 42),
        ),
        useMaterial3: true,
      ),
      home: const SignInScreen(),
    );
  }
}
