import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  String _email = '';
  String _pass = '';
  String _fecha = '';
  TextEditingController _inputFieldDate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Inputs')),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          children: <Widget>[
            _createInput(),
            Divider(),
            _createEmail(),
            Divider(),
            _createPass(),
            Divider(),
            _createFecha(context),
            Divider(),
            _createPerson(),
          ],
        ));
  }

  Widget _createInput() {
    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
          counter: Text('Letras ${_nombre.length}'),
          hintText: 'Nombre de la persona',
          labelText: 'Nombre',
          helperText: 'Sólo es el nombre',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))),
      onChanged: _handleName,
    );
  }

  void _handleName(String value) {
    setState(() {
      _nombre = value;
    });
  }

  Widget _createPerson() {
    return ListTile(
      title: Text('El nombre es $_nombre'),
      subtitle: Text('Email: $_email'),
      );
  }

  Widget _createEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'E-mail',
          labelText: 'E-mail',
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))),
      onChanged: (value) {
        setState(() {
          _email = value;
        });
      },
    );
  }

  Widget _createFecha(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      // obscureText: true,
      decoration: InputDecoration(
          hintText: 'Fecha de nacimiento',
          labelText: 'Fecha de nacimiento',
          suffixIcon: Icon(Icons.calendar_today),
          icon: Icon(Icons.perm_contact_calendar ),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))),
      onTap: (){

        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);

      },
      controller: _inputFieldDate,
    );
  } 

  _selectDate(BuildContext context ) async {

    DateTime picked = await showDatePicker(

      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2018),
      lastDate: DateTime(2025),
      locale: Locale('es', 'ES')

    );

    if(picked != null){
      setState(() {
        _fecha = picked.toString();
        _inputFieldDate.text = _fecha;
      });
    }

  }

  Widget _createPass(){
    return TextField(
      // keyboardType: TextInputType.,
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Password',
          labelText: 'Password',
          suffixIcon: Icon(Icons.lock_open),
          icon: Icon(Icons.lock),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))),
      onChanged: (value) {
        setState(() {
          _pass = value;
        });
      },
    );
  }
}
