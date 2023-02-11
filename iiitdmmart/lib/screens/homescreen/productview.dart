import 'package:flutter/material.dart';
import 'package:iiitdmmart/screens/productscreen/product.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:provider/provider.dart';
import '../../providers/sale_products.dart';

class ProductView extends StatefulWidget {
  const ProductView({Key? key}) : super(key: key);

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  @override
  void initState() {
    // TODO: implement initState
    Provider.of<SaleProducts>(context, listen: false).fetchAndSetProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<SaleProduct> saleProducts =
        Provider.of<SaleProducts>(context).saleProducts;

    return GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: saleProducts.length,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Product(saleProducts[index]),
                    ));
              },
              child: Hero(
                tag: Key(saleProducts[index].id),
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
                        Expanded(
                          flex: 2,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            child: Image.network(
                              saleProducts[index].imgsrc,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Card(
                            color: Colors.black,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                saleProducts[index].title.text.xl.make(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    saleProducts[index]
                                        .lend
                                        .text
                                        .xl
                                        .semiBold
                                        .make(),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        "₹".text.blue200.bold.blue200.xl.make(),
                                        saleProducts[index]
                                            .price
                                            .toString()
                                            .text
                                            .blue200
                                            .xl
                                            .make(),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
