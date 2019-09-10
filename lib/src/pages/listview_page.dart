import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {

  List<int> _numerosList = [1,2,3,4,5,6];
  int _lastItem = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas'),
      ),
      body: _createList(),
    );
  }

  Widget _createList(){
    return ListView.builder(
      itemCount: _numerosList.length,
      itemBuilder: (BuildContext context, int index){
        final imagen = _numerosList[index];

        return FadeInImage(
          image: NetworkImage('https://picsum.photos/id/$imagen/500/300'),
          placeholder: AssetImage('assets/jar-loading.gif'),
        );
      },
    );
  }

  Widget _add5images(){

    for (var i = 1; i < 10; i++) {
      
    }
  }
}