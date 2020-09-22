import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email = '';
  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            _primeraCapa(_screenSize, context),
            Container(
              height: double.infinity,
              width: double.infinity,
              child: _segundaCapa(_screenSize, context),
            )
          ],
        ),
      ),
    );
  }

  _primeraCapa(_screenSize, context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: _screenSize.height * 0.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.elliptical(80.0, 30.0),
            ),
            color: Theme.of(context).primaryColor,
          ),
          child: Center(
            child: Hero(
              tag: 'img',
              child: Image(
                image: AssetImage('assets/humaaans.png'),
                height: 200.0,
              ),
            ),
          ),
        ),
        SizedBox(
          width: _screenSize.width * 0.7,
          child: OutlineButton.icon(
            onPressed: () {},
            icon: Icon(Icons.android, color: Theme.of(context).primaryColor),
            label: Text('Google'),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
          ),
        ),
      ],
    );
  }

  Widget _segundaCapa(_screenSize, BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.8,
      heightFactor: 0.4,
      alignment: Alignment(-0.0, 0.4),
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.white,
//            border: Border.all(
            //width: 1.0,
            //color: Colors.grey,
            //),
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 6.0,
                spreadRadius: 5.0,
                offset: Offset(0, 5),
              )
            ]),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'correo@correo.com',
                  labelText: 'Email',
                  suffixIcon: Icon(Icons.account_circle),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Ingrese los campos';
                  } else {
                    return null;
                  }
                },
                onChanged: (valor) {
                  setState(() {
                    _email = valor;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
