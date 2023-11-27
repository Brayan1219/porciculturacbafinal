import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/mobil/usuario/cerditos/registros/registros.dart';
import 'package:myapp/services/firebase_service.dart';
import 'dart:ui';
import 'package:myapp/utils.dart';

class registro1 extends StatelessWidget {
  MaterialColor mycolor = MaterialColor(Color.fromRGBO(229, 203, 206, 1).value, <int, Color>{
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
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      title: "PORCI/HEMBRA",
      theme: ThemeData(
        primarySwatch: mycolor,
      ),
      home: regis1(),
    );
  }
}

class regis1 extends StatefulWidget {
  @override
  State<regis1> createState() => _regis1State();
}

class _regis1State extends State<regis1> {

  // ------------------------------fecha----------------------------
  DateTime selectedDate = DateTime.now();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _date2Controller = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null) {
      // Actualiza el controlador con la fecha seleccionada
      _dateController.text = "${pickedDate.toLocal()}".split(' ')[0];
    }
  }

  Future<void> _selectDate2(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null) {
      // Actualiza el controlador con la fecha seleccionada
      _date2Controller.text = "${pickedDate.toLocal()}".split(' ')[0];
    }
  }
  // ------------------------------fecha fin----------------------------

  TextEditingController idcontroller = TextEditingController(text: "");
  TextEditingController nombrecontroller = TextEditingController(text: "");
  TextEditingController pesocontroller = TextEditingController(text: "");
  TextEditingController pesonescontroller = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // registro16AT (31:308)
          width:  double.infinity,
          height:  844*fem,
          decoration:  BoxDecoration (
            color:  Color(0xffffffff),
          ),
          child:
          Stack(
            children:  [
              Positioned(
                // materialappb7D (31:309)
                left:  0*fem,
                top:  0*fem,
                child:
                Container(
                  width:  572*fem,
                  height:  319*fem,
                  child:
                  Stack(
                    children:  [
                      Positioned(
                        // rectangle5tMD (31:310)
                        left:  0*fem,
                        top:  0*fem,
                        child:
                        Align(
                          child:
                          SizedBox(
                            width:  390*fem,
                            height:  277*fem,
                            child:
                            Image.network(
                              'img/mobil/fondoinicio.png',
                              fit:  BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // ellipse1Q4f (31:311)
                        left:  0*fem,
                        top:  225*fem,
                        child:
                        Align(
                          child:
                          SizedBox(
                            width:  102*fem,
                            height:  94*fem,
                            child:
                            Image.network(
                              'img/mobil/circulo.png',
                              width:  102*fem,
                              height:  94*fem,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // rectangle6Vbu (31:312)
                        left:  51*fem,
                        top:  225*fem,
                        child:
                        Align(
                          child:
                          SizedBox(
                            width:  339*fem,
                            height:  68*fem,
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
                        // rectangle7o6o (31:313)
                        left:  339*fem,
                        top:  204*fem,
                        child:
                        Align(
                          child:
                          SizedBox(
                            width:  233*fem,
                            height:  89*fem,
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
                        // ellipse28Py (31:314)
                        left:  295*fem,
                        top:  131*fem,
                        child:
                        Align(
                          child:
                          SizedBox(
                            width:  102*fem,
                            height:  94*fem,
                            child:
                            Image.network(
                              'img/mobil/circulo.png',
                              width:  102*fem,
                              height:  94*fem,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // registrosG79 (59:76)
                        left: 105*fem,
                        top: 18*fem,
                        child: Align(
                          child: SizedBox(
                            width: 190*fem,
                            height: 35*fem,
                            child: Text(
                              'REGISTRO',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Alfa Slab One',
                                fontSize: 32*ffem,
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
                        // informacionkY7 (59:77)
                        left: 114.5*fem,
                        top: 55*fem,
                        child: Align(
                          child: SizedBox(
                            width: 170*fem,
                            height: 19*fem,
                            child: Text(
                              'Principal / Hembra',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Jost',
                                fontSize: 16*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.3675*ffem/fem,
                                letterSpacing: 0.4*fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Scaffold.of(context).openDrawer();
                        },
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => registros()));
                          },
                          borderRadius: BorderRadius.circular(50.0),
                          // Personaliza la forma del botón
                          child: Container(
                            margin: EdgeInsets.only(left: 30,top: 25),
                            width: 25.7 * fem,
                            height: 20.28 * fem,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Image.asset(
                                'img/mobil/flecha.png',                                          width: 42 * fem,
                                height: 22.05 * fem,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // fontregisCgf (31:373)
                left:  0*fem,
                top:  131*fem,
                child:
                Container(
                  width:  518.38*fem,
                  height:  403.61*fem,
                  child:
                  Stack(
                    children:  [
                      Positioned(
                        // rectangle31L2B (31:333)
                        left:  42*fem,
                        top:  0*fem,
                        child:
                        Align(
                          child:
                          SizedBox(
                            width:  313*fem,
                            height:  312*fem,
                            child:
                            Container(
                              decoration:  BoxDecoration (
                                borderRadius:  BorderRadius.circular(20*fem),
                                color:  Color(0xfffff3f3),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // rectangle32e2s (31:370)
                        left:  240*fem,
                        top:  152*fem,
                        child:
                        Align(
                          child:
                          SizedBox(
                            width:  216.38*fem,
                            height:  247.97*fem,
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
                        // rectangle33MCB (31:371)
                        left:  0*fem,
                        top:  149*fem,
                        child:
                        Align(
                          child:
                          SizedBox(
                            width:  203.19*fem,
                            height:  254.61*fem,
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
                        // rectangle34tC7 (31:372)
                        left:  74*fem,
                        top:  32*fem,
                        child:
                        Align(
                          child:
                          SizedBox(
                            width:  249*fem,
                            height:  349*fem,
                            child:
                            Container(
                              decoration:  BoxDecoration (
                                borderRadius:  BorderRadius.circular(20*fem),
                                color:  Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // fonfinCyV (31:382)
                left:  0*fem,
                top:  724*fem,
                child:
                Container(
                  width:  394*fem,
                  height:  176*fem,
                  child:
                  Stack(
                    children:  [
                      Positioned(
                        // rectangle35MLb (31:375)
                        left:  0*fem,
                        top:  45*fem,
                        child:
                        Align(
                          child:
                          SizedBox(
                            width:  390*fem,
                            height:  75*fem,
                            child:
                            Image.network(
                              'img/mobil/fondoinicio.png',
                              fit:  BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // rectangle36t5d (31:377)
                        left:  50*fem,
                        top:  28*fem,
                        child:
                        Align(
                          child:
                          SizedBox(
                            width:  340*fem,
                            height:  60*fem,
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
                        // ellipse3Mju (31:376)
                        left:  0*fem,
                        top:  0*fem,
                        child:
                        Align(
                          child:
                          SizedBox(
                            width:  100*fem,
                            height:  88*fem,
                            child:
                            Image.network(
                              'img/mobil/circulo.png',
                              width:  100*fem,
                              height:  88*fem,
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              Positioned(
                // cerdito7QiB (135:2)
                left:  88*fem,
                top:  95*fem,
                child:
                Align(
                  child:
                  SizedBox(
                    width:  221*fem,
                    height:  120*fem,
                    child:
                    Image.network(
                      'img/mobil/cerdito1.png',
                      fit:  BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle56xDu (135:3)
                left:  74*fem,
                top:  230*fem,
                child:
                Align(
                  child:
                  SizedBox(
                    width:  249*fem,
                    height:  552*fem,
                    child:
                    Container(
                      decoration:  BoxDecoration (
                        // color:  Color(0xffd9d9d9),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 15, right: 15, top: 50),
                            child: id_hembra(),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15, right: 15,top: 10),
                            child: nombre(),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  width:  90*fem,
                                  height:  50*fem,
                                  margin: EdgeInsets.only(left: 15, right: 15, top: 10),
                                  child: fecha_ingreso(),
                                ),
                                Container(
                                  width:  90*fem,
                                  height:  50*fem,
                                  margin: EdgeInsets.only(left: 15, right: 15, top: 10),
                                  child: fecha_nacimiento(),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15, right: 15, top: 10),
                            child: peso(),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15, right: 15, top: 10),
                            child: pesones(),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 40),
                            child: Positioned(
                              left: 85*fem,
                              top: 279*fem,
                              child: TextButton(
                                onPressed: () {
                                  String idString = idcontroller.text;
                                  int id = int.parse(idString);
                                  String nombre = nombrecontroller.text;
                                  DateTime fechaIngreso = DateTime.parse(_dateController.text);
                                  DateTime fechaNacimiento = DateTime.parse(_date2Controller.text);
                                  String peso= pesocontroller.text;
                                  String pesonesString=pesonescontroller.text;
                                  int pesones=int.parse(pesonesString);

                                  addRegistroHembra(id, nombre, fechaIngreso, fechaNacimiento, peso,pesones);

                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => registros()),
                                  );
                                },
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(46*fem, 14*fem, 54.5*fem, 17.02*fem),
                                  width: 221*fem,
                                  height: 49*fem,
                                  decoration: BoxDecoration (
                                    color: Color(0xfff5c7c6),
                                    borderRadius: BorderRadius.circular(20*fem),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x3f000000),
                                        offset: Offset(0*fem, 4*fem),
                                        blurRadius: 2*fem,
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Opacity(
                                        // iconopersonaqgs (2:51)
                                        opacity: 0.8,
                                        child: Container(
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10.7*fem, 0*fem),
                                          width: 16.8*fem,
                                          height: 17.98*fem,
                                          child: Image.asset(
                                            'img/mobil/iconopersona.png',
                                            width: 16.8*fem,
                                            height: 17.98*fem,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // registrarmeCJT (2:21)
                                        margin: EdgeInsets.fromLTRB(0*fem, 1.02*fem, 0*fem, 0*fem),
                                        child: Text(
                                          'REGISTRAR',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Alice',
                                            fontSize: 13*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.145*ffem/fem,
                                            letterSpacing: 0.26*fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container id_hembra(){
    return Container(
      height: 60,
      child: TextFormField(
        controller:idcontroller,
        keyboardType: TextInputType.number,
        style: TextStyle(
          fontSize: 15,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.perm_identity_rounded,color: Color.fromRGBO(229, 203, 206, 1),size: 25),
          hintText: 'Ingrese Id',
          hintStyle: TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),
          labelText: 'ID HEMBRA',
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

  Container nombre(){
    return Container(
      height: 60,
      child: TextFormField(
        controller:nombrecontroller,
        keyboardType: TextInputType.name,
        style: TextStyle(
          fontSize: 15,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.perm_identity_rounded,color: Color.fromRGBO(229, 203, 206, 1),size: 25),
          hintText: 'Ingrese Nombre',
          hintStyle: TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),
          labelText: 'NOMBRE',
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

  Container fecha_ingreso() {
    return Container(
      child: TextFormField(
        readOnly: true,
        controller: _dateController, // Usa el controlador aquí
        decoration: InputDecoration(
          hintText: 'Ingrese fecha',
          hintStyle: TextStyle(fontSize: 7, fontWeight: FontWeight.bold),
          labelText: "FECHA INGRESO",
          labelStyle: TextStyle(
            fontSize: 10,
            color: Colors.grey,
          ),
        ),
        onTap: () => _selectDate(context),
      ),
    );
  }

  Container fecha_nacimiento() {
    return Container(
      child: TextFormField(
        readOnly: true,
        controller: _date2Controller, // Usa el controlador aquí
        decoration: InputDecoration(
          hintText: 'Ingrese fecha',
          hintStyle: TextStyle(fontSize: 7, fontWeight: FontWeight.bold),
          labelText: "FECHA NACIMIENTO",
          labelStyle: TextStyle(
            fontSize: 10,
            color: Colors.grey,
          ),
        ),
        onTap: () => _selectDate2(context),
      ),
    );
  }

  Container peso(){
    return Container(
      height: 60,
      child: TextFormField(
        controller:pesocontroller,
        keyboardType: TextInputType.name,
        style: TextStyle(
          fontSize: 15,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.perm_identity_rounded,color: Color.fromRGBO(229, 203, 206, 1),size: 25),
          hintText: 'Ingrese Peso',
          hintStyle: TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),
          labelText: 'PESO LLEGADA',
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

  Container pesones(){
    return Container(
      height: 60,
      child: TextFormField(
        controller:pesonescontroller,
        keyboardType: TextInputType.number,
        style: TextStyle(
          fontSize: 15,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.perm_identity_rounded,color: Color.fromRGBO(229, 203, 206, 1),size: 25),
          hintText: 'Ingrese Numero',
          hintStyle: TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),
          labelText: 'NUMERO PESONES',
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