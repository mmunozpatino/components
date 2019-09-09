import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valueSlider = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          
          children: <Widget>[
            _createSlider(),
            Expanded(child: _crearImagen()),
          ],
          ),
      )
    );
  }

  Widget _createSlider(){

      
    return Slider(
      activeColor: Colors.deepPurpleAccent,
      label: 'Tamaño de la imagen',
      // divisions: 20,
      value: _valueSlider,
      min: 0.0,
      max: 400.0,
      onChanged: (value ){
        setState(() {
          _valueSlider = value;
        });
      },
    );
  }

  Widget _crearImagen(){
    return Image(

      image: NetworkImage('https://applauss.com/wp-content/uploads/2018/06/Wallpaper-04-770x513.jpg'),
      width: _valueSlider,
      fit: BoxFit.contain

    );
  }
}
