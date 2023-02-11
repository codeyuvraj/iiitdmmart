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
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                //   children: [
                //     "\$999".text.xl4.semiBold.make(),
                //     ElevatedButton(
                //       onPressed: (){
                //         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                //           content: "NOT Supported yet🥲".text.xl.semiBold.center.make(),
                //           duration: const Duration(seconds: 2),
                //           //animation: CurvedAnimation(curve: Curves.bounceIn, parent: kAlwaysCompleteAnimation),
                //         ));
                //       },
                //       style: const ButtonStyle(
                //         elevation: MaterialStatePropertyAll(5),
                //         backgroundColor: MaterialStatePropertyAll(Colors.black),
                //         padding: MaterialStatePropertyAll(EdgeInsets.all(12)),
                //         shape: MaterialStatePropertyAll(StadiumBorder(side: BorderSide(width: 5)),
                //         ),
                //       ),
                //       child: "Place Order".text.make(),
                //     ).scale110(),
                //   ],
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

