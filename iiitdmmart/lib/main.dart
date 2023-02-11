import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iiitdmmart/providers/sale_products.dart';
import 'package:iiitdmmart/screens/addproduct/addproduct.dart';
import 'package:iiitdmmart/screens/homescreen/homescreen.dart';

import 'package:iiitdmmart/providers/auth.dart';
import 'package:iiitdmmart/screens/loginscreen/login.dart';
import 'package:iiitdmmart/screens/requestscreen/uploadscreen.dart';
import 'package:iiitdmmart/screens/settings/settings.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // var authdata = Provider.of<Auth>(context);
    return MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: Auth()),
          ChangeNotifierProxyProvider<Auth, SaleProducts >(create: (context) => SaleProducts('authToken', 'userId', []),
            update: (context, auth, saleProds) => SaleProducts(auth.token as String
          , auth.userId,
          saleProds == null ? [] : saleProds.saleProducts))
        ],
        child: Consumer<Auth>(
          builder: (ctx, auth, _) => MaterialApp(
            title: 'College',
            initialRoute: AuthScreen.routeName,
            // home: AuthScreen(),
            routes: {
              'homescreen': (context) =>  const MyHomePage(),
              AuthScreen.routeName: (context) => AuthScreen(),
            },
          ),
        ));
  }
}

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(appBar: AppBar(title: Text('homepage')),
//     body: Center(child: Text('homepage'),),
//     );
//   }
// }

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex =0 ;
  final List<Widget> pages =[const HomeScreen(),const AddProduct(),const UploadScreen(),const SettingsPage()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            boxShadow: [
              BoxShadow(
                blurRadius: 5,
                color: Colors.black.withOpacity(.1),
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: GNav(
              gap: 8,
              backgroundColor: Colors.black,
              activeColor: Colors.white,
              color: Colors.white,
              iconSize: 24,
              tabBackgroundColor: Colors.grey.shade800,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              duration: const Duration(milliseconds: 400),
              haptic: true,
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.add_circle_rounded,
                  text: 'Add',
                ),
                GButton(
                  icon: CupertinoIcons.arrow_down_doc_fill,
                  text: 'Request',
                ),
                GButton(
                  icon: Icons.settings,
                  text: 'Settings',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          alignment: Alignment.center,
          child: pages[_selectedIndex],
        ),
      ),
    );
  }
}

