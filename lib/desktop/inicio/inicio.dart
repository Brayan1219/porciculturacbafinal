import 'package:flutter/material.dart';
import 'package:myapp/desktop/inicio/registro.dart';
import 'package:myapp/desktop/inicio/sesion.dart';
import '../../utils.dart';
import '../usuario/home.dart';

class inicio_desktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      title: "PORCICULTURA/CBA",
      theme: ThemeData(),
      home: iniapp(),
    );
  }
}

class iniapp extends StatefulWidget {
  @override
  State<iniapp> createState() => _iniappState();
}

class _iniappState extends State<iniapp> {
  Color _color = Color(0xa062a191);
  Color _2color = Color(0xff716b6b);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 300 * fem,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // rectangle10XJF (204:111)
              left: 105 * fem,
              top: 30 * fem,
              child: Align(
                child: SizedBox(
                  width: 290 * fem,
                  height: 160 * fem,
                  child: Image.asset(
                    'img/desktop/inicio1.gif',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // bienvenidoaiNj (208:2)
              left: 20 * fem,
              top: 45 * fem,
              child: Align(
                child: SizedBox(
                  width: 317 * fem,
                  height: 64 * fem,
                  child: Text(
                    'BIENVENIDO A ',
                    style: SafeGoogleFont(
                      'Moul',
                      fontSize: 10 * ffem,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff62a191),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 20 * fem,
              top: 55 * fem,
              child: Align(
                child: SizedBox(
                  width: 515 * fem,
                  height: 100 * fem,
                  child: Text(
                    'PORCICULTURA',
                    style: SafeGoogleFont(
                      'Moul',
                      fontSize: 15 * ffem,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffea96a0),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // tAj (208:4)
              left: 20 * fem,
              top: 80 * fem,
              child: Align(
                child: SizedBox(
                  width: 110 * fem,
                  height: 150 * fem,
                  child: Text(
                    '------------------------------------------------------------------------------------------------------------------------------------------------------------------------\n',
                    style: SafeGoogleFont(
                      'Alice',
                      fontSize: 9 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 0.7142857143 * ffem / fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle13Q79 (208:5)
              left: 20 * fem,
              top: 125 * fem,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          // builder: (context) => sesion_deskt()));
                          builder: (context) => home_desk()));
                },
                child: Align(
                  child: SizedBox(
                    width: 50 * fem,
                    height: 12 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30 * fem),
                        color: Color(0xfffff0f0),
                      ),
                      child: Center(
                        child: Text(
                          'comenzar',
                          style: SafeGoogleFont(
                            'Alfa Slab One',
                            fontSize: 5 * ffem,
                            fontWeight: FontWeight.w100,
                            color: Color(0x82ea96a0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Stack(
              children: [
                Positioned(
                  left: 0 * fem,
                  top: 0 * fem,
                  child: Container(
                    //padding:  EdgeInsets.fromLTRB(5*fem, 9*fem, 29*fem, 8*fem),
                    width: 1280 * fem,
                    height: 17 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0 * fem, 2 * fem),
                          blurRadius: 2 * fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 227 * fem,
                          height: 80 * fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // rectangle14NtX (208:12)
                                left: 0 * fem,
                                top: 0 * fem,
                                bottom: 0 * fem,
                                child: Align(
                                    child: Container(
                                  width: 25 * fem,
                                  height: 25 * fem,
                                  child: Image.asset(
                                    'img/desktop/logo2.png',
                                    fit: BoxFit.cover,
                                  ),
                                )),
                              ),
                              Positioned(
                                // rectangle15HVh (208:16)
                                left: 30 * fem,
                                top: 2 * fem,
                                bottom: 2 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 30 * fem,
                                    height: 10 * fem,
                                    child: Image.asset(
                                      'img/desktop/fondoinicio.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(
                                80 * fem, 2 * fem, 12 * fem, 0 * fem),
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => regis_desk()),
                                  );
                                },
                                child: Text(
                                  'Registrarme',
                                  style: SafeGoogleFont(
                                    'Alice',
                                    fontSize: 3 * ffem,
                                    fontWeight: FontWeight.w400,
                                    color: _2color,
                                  ),
                                ),
                              ),
                              onEnter: (_) {
                                setState(() {
                                  // Cambiar el color al acercar el cursor
                                  _2color = Color(0xfff5c7c6); // Puedes ajustar el color según tus preferencias
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  // Restaurar el color al alejar el cursor
                                  _2color = Color(0xff716b6b);
                                });
                              },
                            )),
                        Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 5 * fem, 0 * fem, 5 * fem),
                            width: 40 * fem,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xa062a191),
                              borderRadius: BorderRadius.circular(30 * fem),
                            ),
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => sesion_deskt()),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: _color,
                                    borderRadius:
                                        BorderRadius.circular(30 * fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Iniciar Sesión',
                                      style: TextStyle(
                                        fontSize: 3 * ffem,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              onEnter: (_) {
                                setState(() {
                                  // Cambiar el color al acercar el cursor
                                  _color = Color(0xfff5c7c6); // Puedes ajustar el color según tus preferencias
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  // Restaurar el color al alejar el cursor
                                  _color = Color(0xa062a191);
                                });
                              },
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
