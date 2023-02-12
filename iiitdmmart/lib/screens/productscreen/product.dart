import 'package:flutter/material.dart';
import 'package:iiitdmmart/providers/sale_products.dart';
import 'package:velocity_x/velocity_x.dart';

class Product extends StatelessWidget {
  late SaleProduct item ;
  Product(this.item, {super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          toolbarHeight: 45,
          leading: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: const Icon(Icons.keyboard_arrow_left,size: 36,)),
          elevation: 0,
          title: item.title.text.bold.make(),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Hero(
                tag: Key(item.id.toString()),
                child: VxArc(
                  height: 30,
                    arcType: VxArcType.CONVEX,
                    child: Image.network(item.imgsrc,fit: BoxFit.contain),
                ),
              ).h32(context),
              // item.name.text.make(),
              Expanded(child: VxArc(
                height: 30,
                edge: VxEdge.TOP,
                arcType: VxArcType.CONVEY,
                child: Container(
                  padding: const EdgeInsets.all(0),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              30.heightBox,
                              item.title.text.xl2.bold.make(),
                              10.heightBox,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  "Price : ₹".text.blue200.bold.xl.make(),
                                  item.price.toString().text.xl.semiBold.make(),
                                ],
                              ),
                              10.heightBox,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  "Available for : ".text.xl.semiBold.make(),
                                  item.lend.text.size(14).xl.semiBold.make(),
                                ],
                              ),
                              10.heightBox,
                              "Description".text.size(14).xl.textStyle(context.captionStyle).start.make(),
                              4.heightBox,
                              item.description.text.textStyle( context.captionStyle).size(15).make().p16(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  "Owner : ".text.semiBold.xl.make(),
                                  item.keeperId.text.xl.semiBold.make(),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          "Make Offer ".text.xl.make(),
                          const Icon(Icons.chat_bubble_outline_sharp),
                        ],
                      )
                  ),
                  ElevatedButton(
                      onPressed: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          "Buy ".text.xl.make(),
                          const Icon(Icons.shopping_cart_outlined),
                        ],
                      )
                  ),
                ],
              )
            ],
          ),
        ),
    );
  }
}
