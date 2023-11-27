import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class infolote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return loteapp();
  }
}

class loteapp extends StatefulWidget {
  @override
  State<loteapp> createState() => _loteappState();
}

class _loteappState extends State<loteapp> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Container(
            // infolotefPm (59:3)
            width: double.infinity,
            decoration: BoxDecoration (
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // autogroupkjzpQMM (ACtRqrFZtxXVQepiN4KjzP)
                  padding: EdgeInsets.fromLTRB(8*fem, 0*fem, 8*fem, 12*fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            // materialappXwm (66:2)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                            padding: EdgeInsets.fromLTRB(19*fem, 33*fem, 23*fem, 14*fem),
                            width: double.infinity,
                            height: 176*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(20*fem),
                              image: DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/mobil/images/rectangle-38-bg.png',
                                ),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroup6stozqM (ACtRzmAPG4MXtpy89H6Sto)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.3*fem, 36*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // iconmenuKMq (59:43)
                                        margin: EdgeInsets.fromLTRB(0*fem, 11*fem, 29.8*fem, 0*fem),
                                        width: 25.7*fem,
                                        height: 14.28*fem,
                                        child: Image.asset(
                                          'assets/mobil/images/iconmenu-zAb.png',
                                          width: 25.7*fem,
                                          height: 14.28*fem,
                                        ),
                                      ),
                                      Container(
                                        // autogroupqpz9EDu (ACtS6BB2htLuTfQq9eQPZ9)
                                        margin: EdgeInsets.fromLTRB(0*fem, 4*fem, 29.5*fem, 0*fem),
                                        width: 221*fem,
                                        height: 48*fem,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              // loteMpK (59:52)
                                              left: 106.5*fem,
                                              top: 34*fem,
                                              child: Align(
                                                child: SizedBox(
                                                  width: 22*fem,
                                                  height: 14*fem,
                                                  child: Text(
                                                    'lote',
                                                    textAlign: TextAlign.center,
                                                    style: SafeGoogleFont (
                                                      'Alfa Slab One',
                                                      fontSize: 10*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.3675*ffem/fem,
                                                      letterSpacing: 0.4*fem,
                                                      color: Color(0xffffffff),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              // informacioneYX (59:53)
                                              left: 0*fem,
                                              top: 0*fem,
                                              child: Align(
                                                child: SizedBox(
                                                  width: 221*fem,
                                                  height: 35*fem,
                                                  child: Text(
                                                    'INFORMACION',
                                                    textAlign: TextAlign.center,
                                                    style: SafeGoogleFont (
                                                      'Alfa Slab One',
                                                      fontSize: 25*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.3675*ffem/fem,
                                                      letterSpacing: 1*fem,
                                                      color: Color(0xffffffff),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // iconcampanaLAT (59:48)
                                        width: 25.7*fem,
                                        height: 35.74*fem,
                                        child: Image.asset(
                                          'assets/mobil/images/iconcampana-zxF.png',
                                          width: 25.7*fem,
                                          height: 35.74*fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogroupbxqtruV (ACtSCFqERPFjmoR9YNBXQT)
                                  margin: EdgeInsets.fromLTRB(13*fem, 0*fem, 0*fem, 0*fem),
                                  padding: EdgeInsets.fromLTRB(21*fem, 12*fem, 21*fem, 13*fem),
                                  width: 319*fem,
                                  decoration: BoxDecoration (
                                    color: Color(0xffffffff),
                                    borderRadius: BorderRadius.circular(50*fem),
                                  ),
                                  child: Align(
                                    // iconbuscarNcw (59:39)
                                    alignment: Alignment.centerLeft,
                                    child: SizedBox(
                                      width: 17*fem,
                                      height: 16*fem,
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 260*fem, 0*fem),
                                        child: Image.asset(
                                          'assets/mobil/images/iconbuscar-NBZ.png',
                                          width: 17*fem,
                                          height: 16*fem,
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
                      Container(
                        // autogrouppe23sZh (ACtRi29HDphKdqy3aupE23)
                        margin: EdgeInsets.fromLTRB(9*fem, 0*fem, 9*fem, 0*fem),
                        width: double.infinity,
                        height: 646*fem,
                        decoration: BoxDecoration (
                          color: Color(0xfffff6f6),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              // rectangle19CM5 (59:55)
                              left: 23*fem,
                              top: 20*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 317*fem,
                                  height: 117*fem,
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30*fem),
                                      child: Image.asset(
                                        'assets/mobil/images/rectangle-19-9FM.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // pork59y (59:56)
                              left: 52*fem,
                              top: 33*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 90*fem,
                                  height: 90*fem,
                                  child: Image.asset(
                                    'assets/mobil/images/pork-i6T.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // informaoLs (59:57)
                              left: 161.5*fem,
                              top: 33*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 146*fem,
                                  height: 35*fem,
                                  child: Text(
                                    'INFORMA',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Alfa Slab One',
                                      fontSize: 25*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.3675*ffem/fem,
                                      letterSpacing: 1*fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // H19 (59:58)
                              left: 185*fem,
                              top: 62*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 97*fem,
                                  height: 60*fem,
                                  child: Text(
                                    '---------\n---------\n------------',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Alfa Slab One',
                                      fontSize: 25*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 0.6*ffem/fem,
                                      letterSpacing: 1*fem,
                                      color: Color(0x9effffff),
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
                Container(
                  // rectangle40yPm (59:59)
                  width: 390*fem,
                  height: 23*fem,
                  child: Image.asset(
                    'assets/mobil/images/rectangle-40.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

