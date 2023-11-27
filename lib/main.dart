import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              print('Botón de regreso presionado');
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                print('Botón de tres puntos presionado');
              },
            ),
          ],
        ),
        body: MyContainer(),
        bottomNavigationBar: MyBottomNavigationBar(),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 800,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
          colors: [Color(0xFFDA556C), Color(0xFFFFF8E7)],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 55,
            top: 95.28,
            child: Container(
              width: 250,
              height: 250,
              decoration: ShapeDecoration(
                color: Color(0xFF1F8BDB),
                shape: OvalBorder(),
              ),
            ),
          ),
          Positioned(
            left: 38.03,
            top: 406.80,
            child: SizedBox(
              width: 168.27,
              height: 48.73,
              child: Text(
                'Jupiter',
                style: TextStyle(
                  color: Color(0xFF1E1E1E),
                  fontSize: 32,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
          Positioned(
            left: 40,
            top: 475, // Ajusta la posición según tus necesidades
            child: Container(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.square_foot, // Cambia el ícono según tus necesidades
                    color: Colors.white, // Cambia el color del ícono según tus necesidades
                    size: 24, // Ajusta el tamaño del ícono según tus necesidades
                  ),
                  SizedBox(height: 8), // Espacio entre el ícono y la palabra
                  Text(
                    'Word', // Cambia la palabra según tus necesidades
                    style: TextStyle(
                      color: Colors.white, // Cambia el color del texto según tus necesidades
                      fontSize: 16, // Ajusta el tamaño del texto según tus necesidades
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                         SizedBox(width: 120),
                                    Icon(
                    Icons.square_foot, // Cambia el ícono según tus necesidades
                    color: Colors.white, // Cambia el color del ícono según tus necesidades
                    size: 24, // Ajusta el tamaño del ícono según tus necesidades
                  ),
                  SizedBox(height: 8), // Espacio entre el ícono y la palabra
                  Text(
                    'Word', // Cambia la palabra según tus necesidades
                    style: TextStyle(
                      color: Colors.white, // Cambia el color del texto según tus necesidades
                      fontSize: 16, // Ajusta el tamaño del texto según tus necesidades
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 40,
            top: 539,
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 280,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Description',
                                style: TextStyle(
                                  color: const Color(0xFFFFBE75),
                                  fontSize: 15,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 64),
                        Text(
                          'VR tour',
                          style: TextStyle(
                            color: const Color.fromARGB(246, 0, 0, 0),
                            fontSize: 15,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                            height: 0,
                          ),
                        ),
                        const SizedBox(width: 64),
                        Text(
                          'Map',
                          style: TextStyle(
                            color: const Color.fromARGB(246, 0, 0, 0),
                            fontSize: 15,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                            height: 0,
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
            left: 42.50,
            top: 596.60,
            child: SizedBox(
              width: 277.50,
              child: Text(
                'Jupiter is the fifth planet from the Sun and the largest in the Solar System',
                style: TextStyle(
                  color: const Color.fromARGB(246, 0, 0, 0),
                  fontSize: 13,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  height: 2.14,
                  letterSpacing: 0.13,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color(0xFFFEF5E5),
      elevation: 0,
      selectedItemColor: Color(0xFFDA556C),
      iconSize: 18,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.circle),
          label: 'Planet',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.photo),
          label: 'Gallery',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          label: 'Map',
        ),
      ],
    );
  }
}
