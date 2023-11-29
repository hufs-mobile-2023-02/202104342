import 'package:flutter/material.dart';
import 'package:mobile_project/Screens/test_widget_screen.dart';
import 'package:mobile_project/screens/nav_test_screen.dart';
import 'Screens/test_widget.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  dotenv.load(fileName: ".env");

  runApp(
    const MaterialApp(
      home: HomeWidget(),
    ),
  );
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
        children: [
          const TestWidget(),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'Go To Back',
              style: TextStyle(fontSize: 26),
            ),
          ),
        ],
      ),
    );
  }
}

