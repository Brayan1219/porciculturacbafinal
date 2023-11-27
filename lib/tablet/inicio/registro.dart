import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class registablet extends StatelessWidget {
  MaterialColor mycolor = MaterialColor(
    Color.fromRGBO(229, 203, 206, 1).value,
    <int, Color>{
      50: Color.fromRGBO(229, 203, 206, 0.1),
      100: Color.fromRGBO(229, 203, 206, 0.2),
      200: Color.fromRGBO(229, 203, 206, 0.3),
      300: Color.fromRGBO(229, 203, 206, 0.4),
      400: Color.fromRGBO(229, 203, 206, 0.5),
      500: Color.fromRGBO(229, 203, 206, 0.6),
      600: Color.fromRGBO(229, 203, 206, 0.7),
      700: Color.fromRGBO(229, 203, 206, 0.8),
      800: Color.fromRGBO(229, 203, 206, 0.9),
      900: Color.fromRGBO(229, 203, 206, 1),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "REGISTRO",
      theme: ThemeData(
        primarySwatch: mycolor,
      ),
      home: regis(),
    );
  }
}

class regis extends StatefulWidget {
  const regis({super.key});

  @override
  State<regis> createState() => _regisState();
}

class _regisState extends State<regis> {
  bool _isObscure = true;
  bool _isObscure2 = true;

  TextEditingController correocontroller = TextEditingController(text: "");
  TextEditingController contrasenacontroller = TextEditingController(text: "");
  TextEditingController contrasenaConfirmarController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    double baseWidth = 960;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(0*fem, 41*fem, 0*fem, 0*fem),
            width: double.infinity,
            decoration: BoxDecoration (
              image: DecorationImage (
                fit: BoxFit.cover,
                image: AssetImage (
                  'img/tablet/fondoinicio.png',
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(36*fem, 0*fem, 0*fem, 3*fem),
                  width: 634*fem,
                  height: 192*fem,
                  child: Image.asset(
                    'img/tablet/letra2.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 1200*fem,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0*fem,
                        top: 419*fem,
                        child: Align(
                          child: SizedBox(
                            width: 960*fem,
                            height: 785*fem,
                            child: Container(
                              decoration: BoxDecoration (
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 183.1986083984*fem,
                        top: 268*fem,
                        child: Align(
                          child: SizedBox(
                            width: 871.3*fem,
                            height: 990.13*fem,
                            child: Container(
                              decoration: BoxDecoration (
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 107*fem,
                        top: 150*fem,
                        child: Align(
                          child: SizedBox(
                            width: 748*fem,
                            height: 867*fem,
                            child: Container(
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(30*fem),
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0*fem,
                        top: 285.0002441406*fem,
                        child: Align(
                          child: SizedBox(
                            width: 899.68*fem,
                            height: 1007.93*fem,
                            child: Container(
                              decoration: BoxDecoration (
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 273*fem,
                        top: 0*fem,
                        child: Align(
                          child: SizedBox(
                            width: 415*fem,
                            height: 285*fem,
                            child: Image.asset(
                              'img/tablet/cerdito.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 228*fem,
                        top: 387*fem,
                        child: Align(
                          child: SizedBox(
                            width: 503*fem,
                            height: 97*fem,
                            child: Container(
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(15*fem),
                               // color: Color(0xfff2f0f0),
                              ),
                              child: usuario(),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 229*fem,
                        top: 535*fem,
                        child: Align(
                          child: SizedBox(
                            width: 503*fem,
                            height: 97*fem,
                            child: Container(
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(15*fem),
                               // color: Color(0xfff2f0f0),
                              ),
                              child: contra(),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224*fem,
                        top: 684*fem,
                        child: Align(
                          child: SizedBox(
                            width: 503*fem,
                            height: 97*fem,
                            child: Container(
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(15*fem),
                               // color: Color(0xfff2f0f0),
                              ),
                              child: contra2(),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224*fem,
                        top: 883*fem,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(63.79*fem, 4.57*fem, 75.2*fem, 0*fem),
                          width: 366*fem,
                          height: 96*fem,
                          decoration: BoxDecoration (
                            color: Color(0xfff8d8d8),
                            borderRadius: BorderRadius.circular(50*fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3f000000),
                                offset: Offset(0*fem, 4*fem),
                                blurRadius: 2*fem,
                              ),
                            ],
                          ),
                          child: ClipRect(
                            child: BackdropFilter(
                              filter: ImageFilter.blur (
                                sigmaX: 2*fem,
                                sigmaY: 2*fem,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.94*fem, 6.21*fem),
                                    width: 35.07*fem,
                                    height: 46.82*fem,
                                    child: Image.asset(
                                      'img/tablet/iconopersona.png',
                                      width: 35.07*fem,
                                      height: 46.82*fem,
                                    ),
                                  ),
                                  Container(
                                    width: 155*fem,
                                    height: double.infinity,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0*fem,
                                          top: 32.0000610352*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 155*fem,
                                              height: 23*fem,
                                              child: Text(
                                                'REGISTRARME',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont (
                                                  'Almarai',
                                                  fontSize: 20*ffem,
                                                  fontWeight: FontWeight.w700,
                                                  letterSpacing: 0.8*fem,
                                                  color: Color(0xff000000),
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
                        ),
                      ),
                      Positioned(
                        left: 280 * fem,
                        top: 1100 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 230 * fem,
                            height: 28 * fem,
                            child: Text(
                              'NO TENGO UNA CUENTA !',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Almarai',
                                fontSize: 17 * ffem,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1 * fem,
                                color: Color(0xffea96a0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 540 * fem,
                        top: 1100 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 206 * fem,
                            height: 28 * fem,
                            child: Text(
                              'INICIAR SESION',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Almarai',
                                fontSize: 17 * ffem,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1 * fem,
                                color: Color(0xffea96a0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0*fem,
                        top: 1135*fem,
                        child: Align(
                          child: SizedBox(
                            width: 962*fem,
                            height: 2*fem,
                            child: Container(
                              decoration: BoxDecoration (
                                color: Color(0xb2eebbbb),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 625*fem,
                        top: 883*fem,
                        child: Align(
                          child: SizedBox(
                            width: 107*fem,
                            height: 96*fem,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30*fem),
                              child: Image.asset(
                                'img/tablet/fondo.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 650*fem,
                        top: 898*fem,
                        child: Align(
                          child: SizedBox(
                            width: 57*fem,
                            height: 56*fem,
                            child: Image.asset(
                              'img/tablet/icongoogle.png',
                              width: 57*fem,
                              height: 56*fem,
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
      ),
    );
  }

  Container usuario(){
    return Container(
      height: 60,
      child: TextFormField(
        controller:correocontroller,
        keyboardType: TextInputType.name,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail,color: Color.fromRGBO(229, 203, 206, 1),size: 25),
          hintText: 'Ingrese Gmail',
          hintStyle: TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),
          labelText: 'CORREO',
          labelStyle: TextStyle(
            fontSize: 15,
            color: Colors.grey,
          ),
        ),
        validator: (value){
          if(value!.isEmpty){
            return 'Por favor ingrese información';
          }
          return null;
        },
      ),
    );
  }

  Container contra(){
    return Container(
      height: 60,
      child: TextFormField(
        controller:contrasenacontroller,
        keyboardType: TextInputType.name,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        obscureText: _isObscure,
        decoration: InputDecoration(
          // prefixIcon: Icon(Icons.password_sharp,color: Color.fromRGBO(150, 137, 166, 50),size: 35),
          hintText: 'Ingrese Contraseña',
          hintStyle: TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),
          labelText: 'CONTRASEÑA',
          suffixIcon: IconButton(
              icon: Icon(
                  _isObscure ? Icons.visibility : Icons.visibility_off),
              onPressed: () {
                setState(() {
                  _isObscure = !_isObscure;
                });
              }),
          labelStyle: TextStyle(
            fontSize: 15,
            color: Colors.grey,
          ),

        ),
        validator: (value){
          if(value!.isEmpty){
            return 'Por favor ingrese información';
          }
          return null;
        },
      ),
    );
  }



  Container contra2(){
    return Container(
      height: 60,
      child: TextFormField(
        controller: contrasenaConfirmarController,
        keyboardType: TextInputType.name,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        obscureText: _isObscure2,
        decoration: InputDecoration(
          // prefixIcon: Icon(Icons.password_sharp,color: Color.fromRGBO(150, 137, 166, 50),size: 35),
          hintText: 'Ingrese Contraseña',
          hintStyle: TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),
          labelText: 'CONTRASEÑA',
          suffixIcon: IconButton(
              icon: Icon(
                  _isObscure2 ? Icons.visibility : Icons.visibility_off),
              onPressed: () {
                setState(() {
                  _isObscure2 = !_isObscure2;
                });
              }),
          labelStyle: TextStyle(
            fontSize: 15,
            color: Colors.grey,
          ),

        ),
        validator: (value){
          if(value!.isEmpty){
            return 'Por favor ingrese información';
          }
          return null;
        },
      ),
    );
  }

}
