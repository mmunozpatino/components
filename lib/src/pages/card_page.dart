import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cards'),
        ),
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[_cardTipo1()],
        ));
  }

  Widget _cardTipo1() {

    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.deepPurple),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text('esta es la descripción hiper larga de la tarjeta para ver que quiere mostranos el colombiano'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: (){},
                textColor: Colors.deepPurple,
              ),
              SizedBox(width: 10,),
              FlatButton(
                child: Text('Aceptar'),
                onPressed: (){},
                color: Colors.deepPurple,
                textColor: Colors.white,
              ),
              SizedBox(width: 10,)
            ],
            )
        ],
      ),
    );
  }
}
