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
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool hidePassword = false;
  String error = "";

  bool isLogin(String username, String password) {
    if (username == "admin" && password == "123") {
      setState(() {
        _username.text = "";
        _password.text = "";
        error = "";
      });
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Padding(
        padding: const EdgeInsets.all(20.0),
    child: SafeArea(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    SizedBox(height: 50),

    // Logo Image
    Image.asset(
    "assets/img/iglogo.png", // Ensure this image exists in your assets folder
    width: 120,
    height: 120,
    fit: BoxFit.contain,
    ),
    // Rounded Login Button
    Container(
    width: double.maxFinite,
    child: CupertinoButton(
    color: CupertinoColors.systemBlue,
    borderRadius: BorderRadius.circular(30),
    child: Text(
    'Log in',
    style: TextStyle(color: CupertinoColors.white, fontWeight: FontWeight.bold),
    ),
    onPressed: () {
    isLogin(_username.text, _password.text)
    ? Navigator.push(context, CupertinoPageRoute(builder: (context) => Homepage()))
        : setState(() {
    _password.text = "";
    error = "Incorrect username or password";
    });
    },

    ),
    ),
    SizedBox(height: 20),
    Text("Forgot password?",
    style: TextStyle(color: CupertinoColors.white, fontWeight: FontWeight.bold),
    ),
    SizedBox(height: 20),


