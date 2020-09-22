import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            _primeraCapa(context),
            _segundaCapa(context),
          ],
        ),
      ),
    );
  }

  Widget _primeraCapa(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      height: double.infinity,
      width: double.infinity,
      child: Text(
        'Tammy Arte',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }

  Widget _segundaCapa(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 100.0),
      width: double.infinity,
      height: 600.0,
      child: _center(context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topRight: Radius.circular(50.0)),
        color: Theme.of(context).primaryColor,
      ),
    );
  }

  Widget _center(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Center(
              child: Hero(
                tag: 'img',
                child: Image(
                  image: AssetImage('assets/humaaans.png'),
                  height: 300.0,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                _button(Colors.blueAccent, context, text: 'Inciar Sesion'),
                _button(Colors.black, context, text: 'Crear Cuenta'),
                Text(
                  'No tines cuenta todavia? Registrarse',
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _button(Color color, BuildContext context, {@required String text}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: SizedBox(
        width: double.infinity,
        child: RaisedButton(
          child: Text(
            text,
            style: TextStyle(
              color: color,
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, 'login');
          },
          elevation: 0,
        ),
      ),
    );
  }
}
