import 'package:flutter/material.dart';

class CusttomBottom extends StatelessWidget {
  CusttomBottom({required this.TextBottom, this.ONtaped});
  String? TextBottom;
  VoidCallback? ONtaped;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ONtaped,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.blue,
        ),
        width: double.infinity,
        height: 40.0,
        child: Center(
          child: Text(
            TextBottom!,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
