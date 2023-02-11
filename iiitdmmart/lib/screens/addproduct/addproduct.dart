import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:velocity_x/velocity_x.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({Key? key}) : super(key: key);

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
          title: "Add Product".text.bold.make(),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:  [
              const Icon(Icons.upload,size: 150,),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Title'),
                obscureText: true,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Price'),
                obscureText: true,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Description'),
                obscureText: true,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Owner Id'),
                obscureText: true,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Lend or Buy'),
                obscureText: true,
              ),
              ElevatedButton(onPressed: (){}, child: "List Item".text.bold.xl2.make())
            ],
          ),
        ),
      ),
    );
  }
}
