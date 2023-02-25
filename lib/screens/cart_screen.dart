import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/conrol.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Cart Screen',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text('${context.watch<Contol>().totalprice}',style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15
            ),)
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.card_travel),
          ),

        ],
      ),

      body: Consumer<Contol>(
        builder: (context,control,child){
          return  ListView.builder(
              itemCount: control.showProdect.length,
              itemBuilder: (context,index){
                return ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(control.showProdect[index].name),
                      Text('${control.showProdect[index].price}'),
                    ],
                  ),
                  trailing: IconButton(icon:const Icon(Icons.remove),onPressed: (){
                    control.removeItem(control.showProdect[index]);

                  },),
                );
              });
        },
      ),
    );
  }
}
