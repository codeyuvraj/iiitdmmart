import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SaleProduct {
  final String id;
  final String title;
  final String ownerId;
  final String keeperId;
  final String imgsrc;
  final double price;
  final String lend;
  final String description;

  SaleProduct({required this.id,
  required this.title,
  required this.ownerId,
  required this.keeperId,
  required this.imgsrc,
  required this.price,
  required this.lend,
  required this.description,});

}

class SaleProducts with ChangeNotifier {
  List<SaleProduct> _saleProducts = [];

  List<SaleProduct> get saleProducts {
    return [..._saleProducts];
  }

  Future<void> fetchAndSetProducts() {
    //Todo - fetch products from firebase and show in the main screen
    
  }

  Future<void> addProduct(SaleProduct saleProduct) {
    //Todo - add product to firebase
  }
}

