import 'package:flutter/cupertino.dart';

void main(){
  runApp(CupertinoApp(
    theme: CupertinoThemeData(brightness: Brightness.dark),
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(child: SafeArea(child: Column(
      children: [
        Text('Test')
      ],
    )));
  }
}
