import 'package:flutter/material.dart';
import 'package:iiitdmmart/screens/homescreen/productview.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:iiitdmmart/providers/sale_products.dart';
import 'package:provider/provider.dart';

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
          leading: IconButton(onPressed: (){},icon: const Icon(Icons.help_outline_sharp)),
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.search_rounded)),
          ],
          title: "VenDork".text.bold.make(),
        ),
        body: const ProductView(),
      ),
    );
  }
}
//     return Column(
//       // padding: const EdgeInsets.all(8.0),
//       children: [ElevatedButton(onPressed: () => {
//         Provider.of<SaleProducts>(context,listen: false).addSaleProduct(SaleProduct(
//           id: 'id', title: 'calculator', ownerId: 'ownerId', keeperId: 'iiitdm',
//            imgsrc:'https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?cs=srgb&dl=pexels-pixabay-268533.jpg&fm=jpg',
//  price: 20, lend: 'lend', description: 'description'))
//       }, child: Text('add product (testing)')),


//       ElevatedButton(onPressed: () => {
//         Provider.of<SaleProducts>(context,listen: false).fetchAndSetProducts(),
//       }, child: Text('fetch product(testing)')),

//       ElevatedButton(onPressed: () => {
//         Provider.of<SaleProducts>(context,listen: false).fetchAndSetProducts(true),
//       }, child: Text('fetch product by user(testing)')),

//       ElevatedButton(onPressed: ()  {
//         final saleProduct = Provider.of<SaleProducts>(context,listen: false).saleProducts;
//         final id = saleProduct[0].id;
//         Provider.of<SaleProducts>(context,listen: false).deleteSaleProduct(id);
//       }, child: Text('delete product by id(testing)')),


//       // GridView.builder(
//       //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//       //   itemCount: 10,
//       //   itemBuilder: (context, index) {
//       //     return Container(
//       //       padding: EdgeInsets.all(8),
//       //       child: Card(
//       //         elevation: 5,
//       //         margin: const EdgeInsets.all(3),
//       //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       //         color: Colors.white,
//       //         child: GridTile(
//       //             child: Column(
//       //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       //               children: [
//       //                 Image.network("https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?cs=srgb&dl=pexels-pixabay-268533.jpg&fm=jpg"),
//       //                 Card(
//       //                   child: Row(
//       //                     children: const [
//       //                       Text("Calculator"),
//       //                       Text("\$100"),
//       //                     ],
//       //                   ),
//       //                 ),
//       //               ],
//       //             ),
//       //         ),
//       //       ),
//       //     );
//       //   },
//       //  )
//        ]);
//   }
// }
