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
          height: 800,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color(0xFFFFF7E2)),
          child: Stack(
            children: [
              Positioned(
                left: 24,
                top: 72,
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 120.25,
                        
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SizedBox(
                              width: 120.25,
                              height: 26,
                              
                              child: Text(
                                'Planets\n',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 31,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w800,
                                  height: 0.05,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 83.97,
                              height:  1,
                              child: Text(
                                'Solar system',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  height: 0.12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 140),
                      Container(
                        width: 55,
                        height: 55,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 55,
                                height: 55,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 2,
                                      color: Color.fromARGB(255, 99, 49, 49)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 37,
                top: 533,
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 298,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 63.91,
                              height: 20,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 46,
                                    top: 0,
                                    child: Container(
                                      width: 17.91,
                                      height: 18.79,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          // Add your widgets here
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0.11,
                                    child: Container(
                                      width: 18.96,
                                      height: 19.89,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          // Add your widgets here
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: 10,
                        height: 17.50,
                        child: Stack(
                          children: [
                            // Add your widgets here
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 163,
                bottom: 250,
                child: Container(
                  width: 360,
                  height: 800,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(color: Color(0xFFFFF7E2)),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount:
                        3, // Ajusta el número de elementos en el carrusel según tus necesidades
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                            left: index == 0
                                ? 24
                                : 0), // Añade margen izquierdo solo al primer elemento
                        child: Container(
                          width: 234,
                          height: 234,
                          decoration: BoxDecoration(
                            color: index == 0
                                ? Color.fromARGB(255, 87, 24, 24)
                                : Color(0xFFD9D9D9),
                            borderRadius: BorderRadius.circular(19),
                          ),
                          margin: const EdgeInsets.only(
                              right:
                                  24), // Añade margen derecho a todos los elementos
                        ),
                      );
                    },
                  ),
                ),
              ),
              Positioned(
                left: -4,
                top: 608,
                child: Container(
                  width: 360,
                  height: 150,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount:
                        5, // Número de elementos en el carrusel (4 planetas + 1 botón)
                    itemBuilder: (BuildContext context, int index) {
                      // Verifica si es el último elemento para mostrar el botón
                      if (index == 4) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 24.0),
                          child: ElevatedButton(
                            onPressed: () {
                              // Lógica para agregar más elementos
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 19, 86, 91),
                              shape: CircleBorder(
                                
                              ),
                            ),
                            child: Container(
                              width: 110,
                              height: 110,
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  color: Colors.black,
                                  size: 40,
                                ),
                              ),
                            ),
                          ),
                        );
                      }

                      // Si no es el último elemento, muestra planetas
                      return Padding(
                        padding: index == 0
                            ? const EdgeInsets.only(right: 24.0, left: 24.0)
                            : const EdgeInsets.only(right: 24.0),
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
                              index == 0
                                  ? 'Saturn'
                                  : (index == 1
                                      ? 'Neptune'
                                      : (index == 2
                                          ? 'Earth'
                                          : (index == 3
                                              ? 'Mercury'
                                              : 'Uranus'))),
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
            ],
          ),
        ),
      ),
    );
  }
}
