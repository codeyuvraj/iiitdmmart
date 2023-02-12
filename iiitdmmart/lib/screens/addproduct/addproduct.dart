import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:iiitdmmart/providers/sale_products.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  @override
  var price = TextEditingController();
  var title = TextEditingController();
  var desc = TextEditingController();
  var owner = TextEditingController();
  var lend = TextEditingController();
  var imgurl = TextEditingController();
  final _form = GlobalKey<FormState>();

  void upload() {
    Provider.of<SaleProducts>(context).addSaleProduct(SaleProduct(id: 'id',
     title: title.text, ownerId: 'ownerId', keeperId: 'iiitdm', imgsrc: imgurl.text, price: double.parse(price.text), lend: lend.text, description: desc.text));
  }

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
          title: "Add Product".text.bold.make(),
        ),
        body: 
          // alignment: Alignment.center,
          // child: Column(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          Container(
        margin: EdgeInsets.all(20),
        child: Form(
          key: _form,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
            children:  [
              // const Icon(Icons.upload,size: 150,),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Title'),
                // obscureText: true,
                controller: title,
                onChanged: (value) => title.text = value,
                
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Price'),
                
                keyboardType: TextInputType.number,
                controller: price,
                onChanged: (value) => price.text = value,
                // obscureText: true,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Description'),
                // keyboardType: ,
                // obscureText: true,
                controller: desc,
                onChanged: (value) => desc.text = value,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Owner Id'),
                // obscureText: true,
                controller: owner,
                onChanged: (value) => owner.text = value,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Lend or Buy'),
                // obscureText: true,
                controller: lend,
                onChanged: (value) => lend.text = value,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'img url'),
                // obscureText: true,
                controller: imgurl,
                onChanged: (value) => imgurl.text = value,
              ),
              ElevatedButton(onPressed: () => upload(), child: "List Item".text.bold.xl2.make()),


                ]
              
              )
              
              )))
          ),
        );
      
  }
}
