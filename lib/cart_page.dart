import 'package:flutter/material.dart';
import 'package:listview/provider/provider_page.dart';
import 'package:provider/provider.dart';

class Cart_store extends StatefulWidget {
  const Cart_store({super.key});

  @override
  State<Cart_store> createState() => _Cart_storeState();
}

class _Cart_storeState extends State<Cart_store> {
  @override
  Widget build(BuildContext context) {
    final object = Provider.of<Provider_class>(context);
    List NameStore = object.favoriteName;
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        title: Text(
          'Wish list',
          style: TextStyle(fontWeight: FontWeight.w900, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[700],
      ),
      body: ListView.builder(
          itemCount: NameStore.length,
          itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            NameStore[index],
            style: TextStyle(fontSize: 20, color: Colors.yellowAccent),
          ),
          trailing: IconButton(
            onPressed: () {
              object.favorites(NameStore[index]);
            },
            icon: object.icn_change(NameStore[index])
                ? Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )
                : Icon(
                    Icons.favorite_border,
                    color: Colors.blue,
                  ),
          ),
        );
      }),
    );
  }
}
