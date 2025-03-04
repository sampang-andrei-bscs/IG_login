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


    // Rounded Username TextField
    CupertinoTextField(
    controller: _username,
    placeholder: "Username, email or mobile number",
    padding: EdgeInsets.all(13),
    decoration: BoxDecoration(
    border: Border.all(color: CupertinoColors.secondarySystemFill),
    color: CupertinoColors.systemGrey6,
    borderRadius: BorderRadius.circular(30),
    ),
    ),
    SizedBox(height: 10),

    // Rounded Password TextField
    CupertinoTextField(
    controller: _password,
    placeholder: "Password",
    padding: EdgeInsets.all(13),
    obscureText: hidePassword,
    decoration: BoxDecoration(
    border: Border.all(color: CupertinoColors.systemFill),
    color: CupertinoColors.systemGrey6,
    borderRadius: BorderRadius.circular(30),
    ),
    suffix: CupertinoButton(
    padding: EdgeInsets.zero,
    child: Icon(
    hidePassword ? CupertinoIcons.eye : CupertinoIcons.eye_slash,
    size: 20,
    color: CupertinoColors.systemGrey,
    ),
    onPressed: () {
    setState(() {
    hidePassword = !hidePassword;
    });
    },

    ),
    ),

    SizedBox(height: 20),