import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:velocity_x/velocity_x.dart';

class UploadScreen extends StatelessWidget {
  const UploadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(color: Color(0xFF253341)),
        scaffoldBackgroundColor: const Color(0xFF15202B),
      ),
      themeMode: ThemeMode.dark,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 5,
                color: Colors.grey.shade800,
              )
            ],
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  child: Lottie.asset('assets/vada.json',animate: true,reverse: true,fit: BoxFit.contain,width: deviceSize.width),
                ),
                "Feature Not Available Yet🙃".text.xl3.bold.make().py32(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

