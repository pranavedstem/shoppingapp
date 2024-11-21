import 'package:flutter/material.dart';
// import 'package:shoppingapp/main.dart';
import 'package:shoppingapp/models/shoppingitems.dart';

class Items extends StatelessWidget{
  const Items(this.shopitems,);

 final ShopingItems shopitems;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Card(child: Column(children: [
        Text(shopitems.name),
        SizedBox(height: 5,),
        Row(children: [
          Text('\$${shopitems.quantity.toStringAsFixed(2)}'),
          const Spacer(),
          Row(
            children: [
              Text(shopitems.category.toString())
            ],
          )
        ],)
      ],),),
    );
  }
}