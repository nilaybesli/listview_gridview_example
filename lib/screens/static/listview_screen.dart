import 'package:flutter/material.dart';
import '../../models/product.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Example'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(product.imageUrl),
            ),
            title: Text(product.name),
            subtitle: Text(product.description),
            trailing: Text('${product.price} \$'),
          );
        },
      ),
    );
  }
}
