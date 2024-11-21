import 'package:flutter/material.dart';

class NewItems extends StatefulWidget {
  const NewItems({super.key});

  @override
  State<NewItems> createState() {
    return _NewItemsState();
  }
}

class _NewItemsState extends State<NewItems> {
  
  final _titleController= TextEditingController();
  final _amountController = TextEditingController();
  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
           controller: _titleController,
            maxLength: 50,
            decoration: const InputDecoration(label: Text('title')),
          ),
            TextField(
           controller: _amountController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(prefixText: '\$ ',label: Text('title')),
          ),
          Row(
            children: [
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: const Text('cancel')),
              ElevatedButton(
                onPressed: () {
                  print(_titleController.text);
                  print(_amountController.text);
                },
                child: Text('save item'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
