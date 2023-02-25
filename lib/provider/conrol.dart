import 'package:cart_wihe_provider/model/item.dart';
import 'package:flutter/cupertino.dart';

class Contol extends ChangeNotifier {
  List<Item> _item = [];
  double totalprice = 0 ;

  addItem(Item item) {
    _item.add(item);
    totalprice += item.price;
    notifyListeners();
  }

  removeItem(Item item) {
    _item.remove(item);
    totalprice -= item.price;
    notifyListeners();
  }

  double get totalsprice => totalprice;

  int get count => _item.length ;

  List<Item> get showProdect => _item ;
}
