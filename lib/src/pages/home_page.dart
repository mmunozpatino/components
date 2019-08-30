import 'package:components/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Components')), body: _list());
  }

  Widget _list() {

    print(menuProvider.opciones);

    return ListView(children: _createListItems());
  }

  List <Widget> _createListItems() {

    return [
      ListTile(
        title: Text('Hello!'),
      ),
      Divider(),
      ListTile(
        title: Text('Hello!'),
      ),
      Divider(),
      ListTile(
        title: Text('Hello!'),
      ),
    ];
  }
}
