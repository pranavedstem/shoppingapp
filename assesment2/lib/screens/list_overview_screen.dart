import 'package:flutter/material.dart';

import 'package:shoppinglist_app/models/grocery_item.dart';
import 'package:shoppinglist_app/widgets/additem_screen.dart';

class GroceryList extends StatefulWidget {
  const GroceryList({super.key});

  @override
  State<GroceryList> createState() => _GroceryListState();
}

class _GroceryListState extends State<GroceryList> {
  final List<GroceryItem> _groceryItems = [];

  void _addItem() async {
    final newItem = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const NewItem(),
      ),
    );
    if (newItem == null) {
      return;
    }
    setState(() {
      _groceryItems.add(newItem);
    });
  }

  void _removeitem(GroceryItem item) {
    setState(() {
      _groceryItems.remove(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget content = const Center(
      child: Text('No Item Added Yet.'),
    );

    if (_groceryItems.isNotEmpty) {
      content = ListView.builder(
        itemCount: _groceryItems.length,
        itemBuilder: (ctx, index) => Dismissible(
          onDismissed: (direction) {
            _removeitem(_groceryItems[index]);
          },
          key: ValueKey(_groceryItems[index].id),
          child: ListTile(
            title: Text(_groceryItems[index].name),
            leading: Container(
              width: 24,
              height: 24,
              color: _groceryItems[index].category.color,
            ),
            trailing: Text(
              _groceryItems[index].quantity.toString(),
            ),
          ),
        ),
      );
    }
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue.shade600,
          foregroundColor: Colors.white,
          onPressed: _addItem,
          tooltip: 'Add',
          child: const Icon(Icons.add),
        ),
        // appBar: AppBar(
        //   actions: [
        //     IconButton(
        //       onPressed: _addItem,
        //       icon: const Icon(Icons.add),
        //     ),
        //   ],
        // ),
        body: content);
  }
}
