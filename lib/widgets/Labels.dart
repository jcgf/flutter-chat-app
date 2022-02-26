import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String textCuenta;
  final String textNavega;
  final String route;

  const Labels({Key? key, required this.route, required this.textCuenta, required this.textNavega}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            this.textCuenta,
            style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
                fontWeight: FontWeight.w300),
          ),
          SizedBox(height: 10),
          GestureDetector(
            child: Text(
              this.textNavega,
              style: TextStyle(
                  color: Colors.blue[600],
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, this.route);
            },
          )
        ],
      ),
    );
  }
}
