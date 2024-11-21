import 'package:flutter/material.dart';
import 'package:shoppingapp/models/shoppingitems.dart';
import 'package:shoppingapp/widget/items.dart';

class Shoppinglistitems  extends StatelessWidget{

  const Shoppinglistitems ({super.key, required this.shoppingitems});
  final List<ShopingItems> shoppingitems;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: shoppingitems.length,itemBuilder: (ctx , index)=>Items(shoppingitems[index]) );
  }
}