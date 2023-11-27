import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
import '../home.dart';

class salud extends StatelessWidget {
  const salud({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SALUD/VACUNAS",
      theme: ThemeData(
      ),
      home: saludapp(),
    );
  }
}

class saludapp extends StatefulWidget {
  @override
  State<saludapp> createState() => _saludappState();
}

class _saludappState extends State<saludapp> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          // saludVm1 (31:356)
          padding:  EdgeInsets.fromLTRB(0*fem, 19*fem, 0*fem, 0*fem),
          width:  double.infinity,
          decoration:  BoxDecoration (
            image:  DecorationImage (
              fit:  BoxFit.cover,
              image:  AssetImage (
                  'img/mobil/fondovacu.png'
              ),
            ),
          ),
          child:
          Column(
            crossAxisAlignment:  CrossAxisAlignment.start,
            children:  [
              Container(
                margin:  EdgeInsets.fromLTRB(27*fem, 0*fem, 0*fem, 12.72*fem),
                width:  20.7*fem,
                height:  20.28*fem,
                child:InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => homemobil()));
                  },
                child:
                Image.asset(
                  'img/mobil/flecha.png',
                ),
        )
              ),
              Container(
                margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                width:  397*fem,
                height:  156*fem,
                child:
                Stack(
                  children:  [
                    Positioned(
                      left:  135*fem,
                      top:  0*fem,
                      child:
                      Align(
                        child:
                        SizedBox(
                          width:  200*fem,
                          height:  55*fem,
                          child:
                          Text(
                            'CENTRO',
                            textAlign:  TextAlign.center,
                            style:  SafeGoogleFont (
                              'Alfa Slab One',
                              fontSize:  40*ffem,
                              fontWeight:  FontWeight.w400,
                              height:  1.3675*ffem/fem,
                              letterSpacing:  1.6*fem,
                              color:  Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left:  169.5*fem,
                      top:  39*fem,
                      child:
                      Align(
                        child:
                        SizedBox(
                          width:  130*fem,
                          height:  28*fem,
                          child:
                          Text(
                            'vacunacion',
                            textAlign:  TextAlign.center,
                            style:  SafeGoogleFont (
                              'Alfa Slab One',
                              fontSize:  20*ffem,
                              fontWeight:  FontWeight.w400,
                              height:  1.3675*ffem/fem,
                              letterSpacing:  0.8*fem,
                              color:  Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left:  142*fem,
                      top:  84*fem,
                      child:
                      Align(
                        child:
                        SizedBox(
                          width:  190*fem,
                          height:  54*fem,
                          child:
                          Text(
                            'recuerde siempre vacunar a tus animales aqui podras tener todo el registro\n',
                            style:  SafeGoogleFont (
                              'Alegreya',
                              fontSize:  13*ffem,
                              fontWeight:  FontWeight.w400,
                              height:  1.36*ffem/fem,
                              letterSpacing:  0.52*fem,
                              color:  Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left:  -65*fem,
                      top:  13*fem,
                      child:
                      Align(
                        child:
                        SizedBox(
                          width:  204*fem,
                          height:  143*fem,
                          child:
                          Image.asset(
                            'img/mobil/salud1.png',
                            fit:  BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autogrouplozwWrT (JTM9HTgV9HMXUcyZjVLozw)
                margin:  EdgeInsets.fromLTRB(27*fem, 0*fem, 26*fem, 39*fem),
                padding:  EdgeInsets.fromLTRB(13*fem, 13*fem, 13*fem, 16*fem),
                width:  double.infinity,
                decoration:  BoxDecoration (
                  color:  Color(0xffffffff),
                  borderRadius:  BorderRadius.circular(20*fem),
                ),
                child:
                Center(
                  // rectangle681oD (278:11)
                  child:
                  SizedBox(
                    width:  double.infinity,
                    height:  110*fem,
                    child:
                    Container(
                      decoration:  BoxDecoration (
                        color:  Color(0xffd9d9d9),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                // autogroupd9ouZJw (JTM9NxXKsZxadsN6fQD9ou)
                margin:  EdgeInsets.fromLTRB(27*fem, 0*fem, 26*fem, 0*fem),
                width:  double.infinity,
                height:  449*fem,
                child:
                Stack(
                  children:  [
                    Positioned(
                      // rectangle655o5 (275:17)
                      left:  0*fem,
                      top:  316*fem,
                      child:
                      Align(
                        child:
                        SizedBox(
                          width:  337*fem,
                          height:  133*fem,
                          child:
                          Container(
                            decoration:  BoxDecoration (
                              color:  Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle641gj (275:16)
                      left:  0*fem,
                      top:  0*fem,
                      child:
                      Align(
                        child:
                        SizedBox(
                          width:  337*fem,
                          height:  449*fem,
                          child:
                          Container(
                            decoration:  BoxDecoration (
                              borderRadius:  BorderRadius.circular(30*fem),
                              color:  Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // vacunaciones8WT (277:3)
                      left:  91*fem,
                      top:  27*fem,
                      child:
                      Align(
                        child:
                        SizedBox(
                          width:  147*fem,
                          height:  24*fem,
                          child:
                          Text(
                            'VACUNACIONES',
                            style:  SafeGoogleFont (
                              'Itim',
                              fontSize:  20*ffem,
                              fontWeight:  FontWeight.w400,
                              height:  1.2*ffem/fem,
                              color:  Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle662Lw (277:4)
                      left:  101*fem,
                      top:  64*fem,
                      child:
                      Align(
                        child:
                        SizedBox(
                          width:  124*fem,
                          height:  30*fem,
                          child:
                          Container(
                            decoration:  BoxDecoration (
                              color:  Color(0xffd9d9d9),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle67xEb (277:5)
                      left:  34*fem,
                      top:  116*fem,
                      child:
                      Align(
                        child:
                        SizedBox(
                          width:  273*fem,
                          height:  299*fem,
                          child:
                          Container(
                            decoration:  BoxDecoration (
                              color:  Color(0xffd9d9d9),
                            ),
                          ),
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
    );
  }
}

