import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: 360,
          height: 150,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3, // Número de elementos en el carrusel
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(right: 12.0), // Ajusta el espaciado entre elementos
                child: Container(
                  width: 110,
                  height: 110,
                  decoration: BoxDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      // Texto dinámico basado en el índice
                      index == 0 ? 'Saturn' : (index == 1 ? 'Neptune' : 'Venus'),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0.11,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
