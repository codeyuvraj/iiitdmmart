import 'package:flutter/material.dart';
import 'package:iiitdmmart/screens/homescreen/productview.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(color: Color(0xFF253341)),
        scaffoldBackgroundColor: const Color(0xFF15202B),
      ),
      themeMode: ThemeMode.dark,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          toolbarHeight: 45,
          leading: IconButton(
              onPressed: () {}, icon: const Icon(Icons.help_outline_sharp)),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.search_rounded)),
          ],
          title: "College Share".text.bold.make(),
        ),
        body: const ProductView(),
//         ElevatedButton(onPressed: () => {
//         Provider.of<SaleProducts>(context,listen: false).addSaleProduct(SaleProduct(
//           id: 'id', title: 'calculator', ownerId: 'ownerId', keeperId: 'iiitdm',
//            imgsrc:'https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?cs=srgb&dl=pexels-pixabay-268533.jpg&fm=jpg',
//  price: 20, lend: 'lend', description: 'description'))
//       }, child: Text('add product(testing)')),
      ),
    );
  }
}
