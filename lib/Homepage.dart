import 'package:flutter/material.dart';
import 'package:shoppingapp/models/shoppingitems.dart';
import 'package:shoppingapp/widget/new_items.dart';
import 'package:shoppingapp/widget/shoppinglistitems.dart';

class HomePage extends StatefulWidget  {
  const HomePage({super.key});
  @override
 _HomePageState createState() => _HomePageState() ;
}

class _HomePageState extends State<HomePage> {
  final List<ShopingItems> _items = [
    ShopingItems(name: 'Rice', quantity:1 , category: 'grocery', priority: Priority.high, isCompleted: true),
    ShopingItems(name: 'SmartPhone', quantity: 2, category: 'Electronics', priority: Priority.medium, isCompleted: false),
  ] ;

  void _openAddnewitems(){
    showModalBottomSheet(context: context, builder: (ctx)=>const NewItems());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('shopping List'),
        actions: [
          IconButton(onPressed: _openAddnewitems, icon: const Icon(Icons.add))
        ],

        // add action

      ),
      body: Column(children: [
        const Text('data'),
        Expanded(child: Shoppinglistitems(shoppingitems: _items))
        
      ],),
      // FloatingActionButton(onPressed: onPressed)   //add new item button
    );
  }

}