import 'package:cart_wihe_provider/model/item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/control.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<Item> items= [
      Item(name: 's22', price: 2000),
      Item(name: 'S22 Ultra', price: 2800),
      Item(name: 'Iphone 13', price: 2500),
      Item(name: 'Iphone 13 Pro Max', price: 3200),
    ];


    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home Screen',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              children: [
                 IconButton(icon:const Icon(Icons.add_shopping_cart), onPressed: () {
                   Navigator.pushNamed(context, 'cart_screen');
                 },),
                const SizedBox(width: 5),
                Text('${context.watch<Contol>().count}'),
              ],
            ),
          )
        ],
      ),

      body: ListView.builder(
          itemCount: items.length ,
          itemBuilder: (context,index){
        return ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(items[index].name),
              Text('${items[index].price}'),
            ],
          ),
          trailing: Consumer<Contol>(
            builder: (context,control,child){
              return IconButton(
                  onPressed: (){
                    control.addItem(items[index]);
                  },
                  icon: const Icon(Icons.add));
            } ,
          ),
        );
      }),
    );
  }
}
