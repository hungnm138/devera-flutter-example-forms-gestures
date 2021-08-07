import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'swipelist_provider.dart';

class SwipeItems extends StatelessWidget {
  const SwipeItems();

  @override
  Widget build(BuildContext context) {
    return Consumer<SourceList>(
      builder: (context, list, _) {
        return ListView.builder(
          itemCount: list.values.length,
          itemBuilder: (context, index) {
            var item = list.values[index];

            return Dismissible(
              key: Key(item),
              background: Container(
                color: Colors.redAccent,
              ),
              onDismissed: (direction) {
                list.removeItem(index);
              },
              direction: DismissDirection.startToEnd,
              confirmDismiss: (direction) => _getConfirm(context, direction),
              child: ListTile(
                leading: const Icon(Icons.trending_flat),
                title: Text(item),
              ),
            );
          },
        );
      },
    );
  }

  Future<bool?> _getConfirm(BuildContext context, DismissDirection direction) {
    return showDialog<bool>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Confirm"),
          content: const Text("Do you really want to delete this item?"),
          actions: <Widget>[
            ElevatedButton(
              child: Text("Nope"),
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent,
              ),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
            ElevatedButton(
              child: Text("Yes"),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
          ],
        );
      },
    );
  }
}
