import 'package:flutter/material.dart';
import 'product.dart';

class Products with ChangeNotifier{
  final List<Product> _items = [
    Product(
      'p1',
      'Red Shirt',
      'A red shirt - it is pretty red!',
      29.99,
      'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
      false,
    ),
    Product(
      'p2',
      'Trousers',
      'A nice pair of trousers.',
      59.99,
      'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
      false,
    ),
    Product(
      'p3',
      'Yellow Scarf',
      'Warm and cozy - exactly what you need for the winter.',
      19.99,
      'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
      false,
    ),
    Product(
      'p4',
      'A Pan',
      'Prepare any meal you want.',
      49.99,
      'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
      false,
    ),
  ];

  //var _showFavoritesOnly = false;

  List<Product> get items{
    // if(_showFavoritesOnly){
    //   return _items.where((productItem) => productItem.isFavorite).toList();
    // }
    return[..._items];
  }

  List<Product> get favoriteItems{
      return _items.where((productItem) => productItem.isFavorite).toList();
  }

  Product findById(String id){
    return _items.firstWhere((prod) => prod.id == id);
  }

  void addProduct(item){
    _items.add(item);
    notifyListeners();
  }

  // void showFavorites(){
  //   _showFavoritesOnly = true;
  //   notifyListeners();
  // }
  //
  // void showAll(){
  //   _showFavoritesOnly = false;
  //   notifyListeners();
  // }
}