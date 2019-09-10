import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {

  ScrollController _scroll = ScrollController();

  List<int> _numerosList = new List();
  int _lastItem = 0;

  //hot reload
  @override
  void initState() {
    super.initState();

    _add10images();

    _scroll.addListener((){
      if(_scroll.position.pixels == _scroll.position.maxScrollExtent){
        _add10images();
      }
    });
  }


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
      controller: _scroll,
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

  Widget _add10images(){

    for (var i = 1; i < 10; i++) {
      _lastItem ++ ;
      _numerosList.add(_lastItem);
    }
    setState(() {});
  }
}