import 'package:flutter/material.dart';
import 'package:listview/cart_page.dart';
import 'package:listview/provider/provider_page.dart';
import 'package:provider/provider.dart';

class Lists extends StatefulWidget {
  const Lists({super.key});

  @override
  State<Lists> createState() => _ListsState();
}

class _ListsState extends State<Lists> {
  List items = ["item1", "item2", "item3", "item4", "item5", "item6"];
  @override
  Widget build(BuildContext context) {
    final object = Provider.of<Provider_class>(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "English Words",
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart_store()));

        },
        icon: const Icon(Icons.favorite),
        label: const Text('Favorites'),
        backgroundColor: Colors.indigoAccent,
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index) => ListTile(
                title: Text(items[index]),
                trailing: IconButton(
                  icon: object.icn_change(items[index])
                      ? Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      : Icon(
                          Icons.favorite_border,
                          color: Colors.blue,
                        ),
                  onPressed: () {
                    object.favorites(items[index]);
                  },
                ),
              ),
          separatorBuilder: (BuildContext context, int index) => Divider(),
          itemCount: items.length),
    );
  }
}
