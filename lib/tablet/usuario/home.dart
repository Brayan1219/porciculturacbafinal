import 'package:flutter/material.dart';
import 'package:myapp/tablet/usuario/cerditos/registros/registros.dart';
import 'dart:ui';
import 'package:myapp/utils.dart';
import 'package:card_swiper/card_swiper.dart';
import 'notificaciones.dart';

class hometablet extends StatelessWidget {
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
      title: "HOME",
      theme: ThemeData(
        primarySwatch: mycolor,
      ),
      home: home(),
    );
  }
}

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  bool botonescerdito = false;
  bool botonessalud = false;
  bool botonesalimento = false;
  bool botoneslimpio = false;


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
            width: double.infinity,
            decoration: BoxDecoration (
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 471*fem,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0*fem,
                        top: 0*fem,
                        child: Container(
                          width: 960*fem,
                          height: 190*fem,
                          decoration: BoxDecoration(
                            //color: Color.fromRGBO(234, 150, 160, 92)
                              color: Color.fromRGBO(234, 136, 146, 92)),
                          child: Stack(
                            children: [
                              Positioned(
                                // ellipse1RKm (31:268)
                                left: 0*fem,
                                top: 115*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 150*fem,
                                    height: 144*fem,
                                    child: Image.asset(
                                      'img/tablet/circulo.png',
                                      width: 150*fem,
                                      height: 144*fem,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // rectangle27YfH (31:269)
                                left: 84*fem,
                                top: 115*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 876*fem,
                                    height: 90*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 865*fem,
                                top: 35*fem,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            notifi_tablet(),
                                      ),
                                    );
                                  },
                                child: Align(
                                  child: SizedBox(
                                    width: 40*fem,
                                    height: 50*fem,
                                    child: Image.asset(
                                      'img/tablet/iconocampana.png',
                                      width: 40*fem,
                                      height: 50*fem,
                                    ),
                                  ),
                                ),
                                ),
                              ),
                              Positioned(
                                left: 75*fem,
                                top: 35*fem,
                                child: Builder(
                                  builder: (context) {
                                    return InkWell(
                                      onTap: () {
                                        Scaffold.of(context).openDrawer();
                                      },
                                    child: Align(
                                      child: SizedBox(
                                        width: 50*fem,
                                        height: 60*fem,
                                        child: Image.asset(
                                          'img/mobil/iconmenu.png',
                                          width: 50*fem,
                                          height: 60*fem,
                                        ),
                                      ),
                                    ),
                                    );
                                  }
                                ),
                              ),
                              Positioned(
                                left: 281*fem,
                                top: 35*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 439*fem,
                                    height: 66*fem,
                                    child: Text(
                                      'PORCICULTURA',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Alfa Slab One',
                                        fontSize: 48*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3675*ffem/fem,
                                        letterSpacing: 1.92*fem,
                                        color: Color(0xffffffff),
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
                        // rectangle8qgK (47:144)
                        left: 83*fem,
                        top: 180*fem,
                        child: Align(
                          child: SizedBox(
                            width: 793*fem,
                            height: 300*fem,
                            child: Container(
                              decoration: BoxDecoration (
                                //color: Color(0xfffff0f0),
                              ),
                              child: _swiper(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(83*fem, 51*fem, 84*fem, 49*fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 50*fem),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 47.02*fem),
                              width: double.infinity,
                              height: 196.49*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // boton salud ------------------------------------------
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        //botonessalud = true;
                                        botonessalud = !botonessalud;
                                        botoneslimpio = false;
                                        botonescerdito = false;
                                        botonesalimento = false;
                                      });
                                    },
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 85.32*fem, 0*fem),
                                      padding: EdgeInsets.fromLTRB(55.21*fem, 21.83*fem, 72.78*fem, 23.51*fem),
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(30 * fem),
                                        color: botonessalud
                                            ? Color.fromRGBO(144, 161, 130, 150)
                                            : Color.fromRGBO(242, 215, 215, 10),
                                      ),
                                      child: Center(
                                        child: SizedBox(
                                          width: 225.85*fem,
                                          height: 151.15*fem,
                                          child: Image.asset(
                                            'img/mobil/corazon.png',
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  //boton alimento -------------------------------------------------
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        botonessalud = false;
                                        botonesalimento = !botonesalimento;
                                        botoneslimpio = false;
                                        botonescerdito = false;
                                        //botonesalimento = true;
                                      });
                                    },
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(65.25*fem, 21.83*fem, 62.74*fem, 23.51*fem),
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(30 * fem),
                                        color: botonesalimento
                                            ? Color.fromRGBO(144, 161, 130, 150)
                                            : Color.fromRGBO(242, 215, 215, 10),
                                      ),
                                      child: Center(
                                        // veganfoodd43 (15:111)
                                        child: SizedBox(
                                          width: 225.85*fem,
                                          height: 151.15*fem,
                                          child: Image.asset(
                                            'img/mobil/alimento.png',
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 196.49*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  //boton limpio ------------------------------------------
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        botonessalud = false;
                                        botoneslimpio = !botoneslimpio;
                                        //botoneslimpio = true;
                                        botonescerdito = false;
                                        botonesalimento = false;
                                      });
                                    },
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 85.32*fem, 0*fem),
                                      padding: EdgeInsets.fromLTRB(67.76*fem, 18.47*fem, 60.23*fem, 26.87*fem),
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(30 * fem),
                                        color: botoneslimpio
                                            ? Color.fromRGBO(144, 161, 130, 150)
                                            : Color.fromRGBO(242, 215, 215, 10),
                                      ),
                                      child: Center(
                                        // housekeepingnr3 (15:113)
                                        child: SizedBox(
                                          width: 225.85*fem,
                                          height: 151.15*fem,
                                          child: Image.asset(
                                            'img/mobil/limpio.png',
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  //boton cerdito ------------------------------------------
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        botonessalud = false;
                                        botonescerdito = !botonescerdito;
                                        botoneslimpio = false;
                                        //botonescerdito = true;
                                        botonesalimento = false;
                                      });
                                    },
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(60.23*fem, 21.83*fem, 67.76*fem, 23.51*fem),
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(30 * fem),
                                        color: botonescerdito
                                            ? Color.fromRGBO(144, 161, 130, 150)
                                            : Color.fromRGBO(242, 215, 215, 10),
                                      ),
                                      child: Center(
                                        // porkSQo (15:110)
                                        child: SizedBox(
                                          width: 225.85*fem,
                                          height: 151.15*fem,
                                          child: Image.asset(
                                            'img/mobil/pork.png',
                                            fit: BoxFit.contain,
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
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 30*fem),
                        padding: EdgeInsets.fromLTRB(50*fem, 24*fem, 102*fem, 19*fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0x7af8eeee),
                          borderRadius: BorderRadius.circular(50 * fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            if (botonescerdito)
                              InkWell(
                                onTap: () {
                                 // Navigator.push(
                                     // context,
                                    //  MaterialPageRoute(
                                        //  builder: (context) => informacion()));
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      width: 100*fem,
                                      height: 79*fem,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(30 * fem),
                                          color: Color.fromRGBO(
                                              98, 161, 145, 170)),
                                      child: Center(
                                        child: SizedBox(
                                          width: 55 * fem,
                                          height: 55 * fem,
                                          child: Image.asset(
                                            'img/mobil/datos.png',
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'Ver',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          '',
                                          fontSize: 15.5 * ffem,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black54,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            if (botoneslimpio)
                              InkWell(
                                onTap: () {
                                 // Navigator.push(
                                     // context,
                                    //  MaterialPageRoute(
                                      //    builder: (context) => limpio()));
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      width: 100*fem,
                                      height: 79*fem,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(30 * fem),
                                          color: Color.fromRGBO(
                                              98, 161, 145, 170)),
                                      child: Center(
                                        // porkSQo (15:110)
                                        child: SizedBox(
                                          width: 55 * fem,
                                          height: 55 * fem,
                                          child: Image.asset(
                                            'img/mobil/calendario.png',
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'Control',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          '',
                                          fontSize: 15.5 * ffem,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black54,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            if (botonessalud)
                              InkWell(
                                onTap: () {
                                  //Navigator.push(
                                   //   context,
                                   //   MaterialPageRoute(
                                    //      builder: (context) => salud()));
                                },
                                child: Container(
                                  width: 100 * fem,
                                  height: 79 * fem,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.circular(30 * fem),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        'img/mobil/fondoinicio.png',
                                      ),
                                    ),
                                  ),
                                  child: Center(
                                    // porkSQo (15:110)
                                    child: SizedBox(
                                      width: 55 * fem,
                                      height: 55 * fem,
                                      child: Image.asset(
                                        'img/mobil/vacunas.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            if (botonesalimento)
                              InkWell(
                                onTap: () {
                                 // Navigator.push(
                                  //    context,
                                   //   MaterialPageRoute(
                                    //      builder: (context) => alimento()));
                                },
                                child: Container(
                                  width: 100 * fem,
                                  height: 79 * fem,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.circular(30 * fem),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        'img/mobil/fondoinicio.png',
                                      ),
                                    ),
                                  ),
                                  child: Center(
                                    // porkSQo (15:110)
                                    child: SizedBox(
                                      width: 55 * fem,
                                      height: 55 * fem,
                                      child: Image.asset(
                                        'img/mobil/vegetales.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            SizedBox(
                              width: 7 * fem,
                            ),
                            if (botonescerdito)
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => registros_tablet()));
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      width: 100 * fem,
                                      height: 79 * fem,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(30 * fem),
                                          color: Color.fromRGBO(
                                              98, 161, 145, 170)),
                                      child: Center(
                                        // porkSQo (15:110)
                                        child: SizedBox(
                                          width: 55 * fem,
                                          height: 55 * fem,
                                          child: Image.asset(
                                            'img/mobil/cerdito.png',
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'Formularios',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          '',
                                          fontSize: 15.5 * ffem,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black54,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            SizedBox(
                              width: 7 * fem,
                            ),
                            if (botonescerdito)
                              InkWell(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  // MaterialPageRoute(
                                  //   builder: (context) => salud()));
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      width: 100 * fem,
                                      height: 79 * fem,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(30 * fem),
                                          color: Color.fromRGBO(
                                              98, 161, 145, 170)),
                                      child: Center(
                                        // porkSQo (15:110)
                                        child: SizedBox(
                                          width: 55 * fem,
                                          height: 55 * fem,
                                          child: Image.asset(
                                            'img/mobil/lote.png',
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'Lotes',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          '',
                                          fontSize: 15.5 * ffem,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black54,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            SizedBox(
                              width: 7 * fem,
                            ),
                            if (botonescerdito)
                              InkWell(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  // MaterialPageRoute(
                                  //   builder: (context) => salud()));
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      width: 100 * fem,
                                      height: 79 * fem,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(30 * fem),
                                          color: Color.fromRGBO(98, 161, 145, 170)),
                                      child: Center(
                                        // porkSQo (15:110)
                                        child: SizedBox(
                                          width: 55 * fem,
                                          height: 55 * fem,
                                          child: Image.asset(
                                            'img/mobil/ganancia.png',
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'Ganancia',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          '',
                                          fontSize: 15.5 * ffem,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black54,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),

                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20 * fem,
                      ),
                      Container(
                        // rectangle13ogb (15:35)
                        width: double.infinity,
                        height: 222 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xffffe6e6),
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Nombre Cliente"),
              accountEmail: Text("correocli@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    'https://cdn.pixabay.com/animation/2022/12/01/17/03/17-03-11-60_512.gif',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                //color: Colors.blueAccent,
                image: DecorationImage(
                  image: AssetImage('img/mobil/fondo.gif'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings_outlined),
              title: Text('CONFIGURACION'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('MIS DATOS'),
              onTap: () => print('Perfil Consulado'),
            ),
            ListTile(
              leading: Icon(Icons.output_sharp),
              title: Text('CERRAR SESION'),
              onTap: () => print('Perfil Consulado'),
            ),
          ],
        ),
      ),
    );
  }


  List<String> images = [
    "img/mobil/carru1.gif",
  ];

  Widget _swiper() {
    return Container(
      color: Colors.transparent,
      child: Swiper(
        viewportFraction: 0.8,
        scale: 0.5,
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            images[index],
            fit: BoxFit.cover,
          );
        },
        itemCount: images.length,
        pagination: new SwiperPagination(),
        //control: new SwiperControl(),
      ),
    );
  }

}
