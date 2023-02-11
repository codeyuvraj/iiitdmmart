import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../providers/sale_products.dart';

class ProductView extends StatelessWidget {
  const ProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<SaleProduct> saleProducts = [
      SaleProduct(
          id: "1",
          title: "Calculator",
          description: "jdwndjwnkdnkwnd",
          imgsrc:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3KYITeifp3Fhsi3tq1xN_iYNQgxSmmJMiGg&usqp=CAU",
          keeperId: "xyz@gmail.com",
          lend: "Buy",
          ownerId: "abc@gmail.com",
          price: 599),
      SaleProduct(
          id: "2",
          title: "Kettle",
          description: "jdwndjwnkdnkwnd",
          imgsrc:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3KYITeifp3Fhsi3tq1xN_iYNQgxSmmJMiGg&usqp=CAU",
          keeperId: "xyz@gmail.com",
          lend: "Buy",
          ownerId: "abc@gmail.com",
          price: 999),
      SaleProduct(
          id: "1",
          title: "Calculator",
          description: "jdwndjwnkdnkwnd",
          imgsrc:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3KYITeifp3Fhsi3tq1xN_iYNQgxSmmJMiGg&usqp=CAU",
          keeperId: "xyz@gmail.com",
          lend: "Buy",
          ownerId: "abc@gmail.com",
          price: 99),
      SaleProduct(
          id: "1",
          title: "Calculator2",
          description: "jdwndjwnkdnkwnd",
          imgsrc:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3KYITeifp3Fhsi3tq1xN_iYNQgxSmmJMiGg&usqp=CAU",
          keeperId: "xyz@gmail.com",
          lend: "Buy",
          ownerId: "abc@gmail.com",
          price: 999),
      SaleProduct(
          id: "1",
          title: "Calculator",
          description: "jdwndjwnkdnkwnd",
          imgsrc:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3KYITeifp3Fhsi3tq1xN_iYNQgxSmmJMiGg&usqp=CAU",
          keeperId: "xyz@gmail.com",
          lend: "Buy",
          ownerId: "abc@gmail.com",
          price: 99),
      SaleProduct(
          id: "1",
          title: "Calculator2",
          description: "jdwndjwnkdnkwnd",
          imgsrc:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3KYITeifp3Fhsi3tq1xN_iYNQgxSmmJMiGg&usqp=CAU",
          keeperId: "xyz@gmail.com",
          lend: "Buy",
          ownerId: "abc@gmail.com",
          price: 999),
      SaleProduct(
          id: "1",
          title: "Calculator",
          description: "jdwndjwnkdnkwnd",
          imgsrc:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3KYITeifp3Fhsi3tq1xN_iYNQgxSmmJMiGg&usqp=CAU",
          keeperId: "xyz@gmail.com",
          lend: "Buy",
          ownerId: "abc@gmail.com",
          price: 99),
      SaleProduct(
          id: "1",
          title: "Calculator",
          description: "jdwndjwnkdnkwnd",
          imgsrc:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3KYITeifp3Fhsi3tq1xN_iYNQgxSmmJMiGg&usqp=CAU",
          keeperId: "xyz@gmail.com",
          lend: "Buy",
          ownerId: "abc@gmail.com",
          price: 99),
      SaleProduct(
          id: "1",
          title: "Calculator2",
          description: "jdwndjwnkdnkwnd",
          imgsrc:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3KYITeifp3Fhsi3tq1xN_iYNQgxSmmJMiGg&usqp=CAU",
          keeperId: "xyz@gmail.com",
          lend: "Buy",
          ownerId: "abc@gmail.com",
          price: 999),
      SaleProduct(
          id: "1",
          title: "Calculator2",
          description: "jdwndjwnkdnkwnd",
          imgsrc:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3KYITeifp3Fhsi3tq1xN_iYNQgxSmmJMiGg&usqp=CAU",
          keeperId: "xyz@gmail.com",
          lend: "Buy",
          ownerId: "abc@gmail.com",
          price: 999),
    ];

    return GridView.builder(
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(8),
            child: Card(
              elevation: 10,
              margin: const EdgeInsets.all(7),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              color: Colors.black,
              child: GridTile(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      child: Image.network(
                        saleProducts[index].imgsrc,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Card(
                      color: Colors.black,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          saleProducts[index].title.text.xl.make(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              "₹".text.blue200.bold.xl.make(),
                              saleProducts[index].price.toString().text.blue200.xl.make(),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
