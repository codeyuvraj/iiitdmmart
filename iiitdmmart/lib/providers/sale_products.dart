import 'package:flutter/material.dart';
import 'package:iiitdmmart/models/http_exception.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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
  final String authToken;
  final String userId;

  SaleProducts( this.authToken, this.userId, this._saleProducts);


  List<SaleProduct> get saleProducts {
    return [..._saleProducts];
  }

  Future<void> addSaleProduct(SaleProduct saleProduct) async {
    print('function called');
    print(authToken);
    final url = Uri.parse('https://iiitdm-mart-default-rtdb.firebaseio.com/saleproducts.json?auth=$authToken');
    // final url = Uri.https('iiitdm-mart-default-rtdb.firebaseio.com', '/saleproducts.json', {'auth':'$authToken'});
    try {
      final response = await http.post(url,
      body: json.encode({
        'title': saleProduct.title,
        'ownerId': userId,
        'keeperId': 'iiitdm',
        'imgsrc': saleProduct.imgsrc,
        'price': saleProduct.price,
        'lend': saleProduct.lend,
        'description': saleProduct.description

      }));
    } catch (e) {
      throw(e);
      print(e.toString());
    }
  }

  Future<void> fetchAndSetProducts([bool filterByUser = false]) async {
    final filterString = filterByUser ? 'orderBy="ownerId"&equalTo="$userId"' : '';
    var url = Uri.parse('https://iiitdm-mart-default-rtdb.firebaseio.com/saleproducts.json?auth=$authToken&$filterString');
    try { 
      final response = await http.get(url);
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      if (extractedData == null) {
        return;
      }
      // url =
      //     Uri.https('flutter-update.firebaseio.com', '/userFavorites/$userId.json?auth=$authToken');
      // final favoriteResponse = await http.get(url);
      // final favoriteData = json.decode(favoriteResponse.body);
      final List<SaleProduct> loadedProducts = [];
      print(extractedData);
      extractedData.forEach((prodId, prodData) {
        loadedProducts.add(SaleProduct(
          description: prodData['description'],
          price: double.parse(prodData['price'].toString()),
          id: prodId,
          title: prodData['title'],
          imgsrc: prodData['imgsrc'],
          keeperId: prodData['keeperId'],
          lend: prodData['lend'],
          ownerId: prodData['ownerId'],
        ));
      });
      _saleProducts = loadedProducts;
      print('${_saleProducts[0].ownerId},,,length = ${_saleProducts.length}');
      notifyListeners();
    } catch (error) {
      throw (error);
    }
    }

  Future<void> deleteSaleProduct(String id) async {
    final url = Uri.parse('https://iiitdm-mart-default-rtdb.firebaseio.com/saleproducts/$id.json?auth=$authToken');
    final existingProductIndex = _saleProducts.indexWhere((prod) => prod.id == id);
    SaleProduct? existingSaleProduct = _saleProducts[existingProductIndex];
    _saleProducts.removeAt(existingProductIndex);
    notifyListeners();
    final response = await http.delete(url);
    if (response.statusCode >= 400) {
      _saleProducts.insert(existingProductIndex, existingSaleProduct);
      notifyListeners();
      throw HttpException('Could not delete product.');
      
    }
    existingSaleProduct = null;
  }

  
  // Future<void> fetchAndSetProducts() {
  //   //Todo - fetch products from firebase and show in the main screen
    
  // }

  // Future<void> addProduct(SaleProduct saleProduct) {
  //   //Todo - add product to firebase
  // }
}

