import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import '../../tablet/widgets/graficas/grafica_home.dart';
import '../../utils.dart';
import 'notificacion.dart';

class home_desk extends StatelessWidget {
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
      themeMode: ThemeMode.light,
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
        height: 832 * fem,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0 * fem,
              top: 0 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(48 * fem, 0 * fem, 48 * fem, 0 * fem),
                width: 1280 * fem,
                height: 45 * fem,
                decoration:  BoxDecoration (
                 // color:  Color(0xffffffff),
                  color: Colors.black,
                  boxShadow:  [
                    BoxShadow(
                      color:  Color(0x3f000000),
                      offset:  Offset(0*fem, 4*fem),
                      blurRadius:  2*fem,
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0 * fem, 14 * fem, 25 * fem, 0 * fem),
                      width: 20 * fem,
                      height: 20 * fem,
                      child:Builder(
                        builder: (context) {
                          return InkWell(
                            onTap: () {
                              Scaffold.of(context).openDrawer();
                            },
                          child: Image.asset(
                            'img/mobil/iconmenu.png',
                            width: 20 * fem,
                            height: 20 * fem,
                          ),
                          );
                        }
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0 * fem, 14 * fem, 600 * fem, 0 * fem),
                      child: Text(
                        'PORCICULTURA',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Alfa Slab One',
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.8 * fem,
                          color:  Color(0xfff8d8d8),
                        ),
                      ),
                    ),
                    Container(
                      //color: Colors.blue,
                      margin: EdgeInsets.fromLTRB(
                          5 * fem, 12 * fem, 0 * fem, 0 * fem),
                      width: 30 * fem,
                      height: 20 * fem,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  notificaciondesktop(), // Reemplaza con el nombre de tu pantalla
                            ),
                          );
                        },
                        child: Image.asset(
                          'img/tablet/iconocampana.png',
                          width: 38 * fem,
                          height: 20 * fem,
                        ),
                      ),
                    ),
                    Container(
                      //color: Colors.purple,
                      width: 57 * fem,
                      height: 95 * fem,
                          child: Padding(
                            padding: EdgeInsets.all(0),
                            child: Container(
                              width: 40 * fem,
                              height: 40 * fem,
                              child: Image.asset(
                                'img/desktop/logo2.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // menudashboarxhm (208:74)
              left: 80 * fem,
              top: 65 * fem,
              child: Container(
                //color: Colors.purple,
                width: 152.18 * fem,
                height: 420 * fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
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
                        margin: EdgeInsets.fromLTRB(
                            20.26 * fem, 8 * fem, 20.26 * fem, 20 * fem),
                        padding: EdgeInsets.fromLTRB(
                            20.23 * fem, 0 * fem, 20.63 * fem, 0 * fem),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30 * fem),
                          color: botonessalud
                              ? Color.fromRGBO(144, 161, 130, 150)
                              : Color.fromRGBO(242, 215, 215, 10),
                        ),
                        child: Center(
                          child: SizedBox(
                            width: 85 * fem,
                            height: 85 * fem,
                            child: Image.asset(
                              'img/mobil/corazon.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ),
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
                        margin: EdgeInsets.fromLTRB(
                            20.26 * fem, 0 * fem, 20.26 * fem, 20 * fem),
                        padding: EdgeInsets.fromLTRB(
                            20.52 * fem, 0 * fem, 20.35 * fem, 0 * fem),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30 * fem),
                          color: botonesalimento
                              ? Color.fromRGBO(144, 161, 130, 150)
                              : Color.fromRGBO(242, 215, 215, 10),
                        ),
                        child: Center(
                          child: SizedBox(
                            width: 85 * fem,
                            height: 85 * fem,
                            child: Image.asset(
                              'img/mobil/alimento.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ),
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
                        margin: EdgeInsets.fromLTRB(
                            20.26 * fem, 0 * fem, 20.26 * fem, 20 * fem),
                        padding: EdgeInsets.fromLTRB(
                            20 * fem, 0 * fem, 20.86 * fem, 0 * fem),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30 * fem),
                          color: botoneslimpio
                              ? Color.fromRGBO(144, 161, 130, 150)
                              : Color.fromRGBO(242, 215, 215, 10),
                        ),
                        child: Center(
                          child: SizedBox(
                            width: 85 * fem,
                            height: 85 * fem,
                            child: Image.asset(
                              'img/mobil/limpio.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ),
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
                        margin: EdgeInsets.fromLTRB(
                            20.26 * fem, 0 * fem, 20.26 * fem, 0 * fem),
                        padding: EdgeInsets.fromLTRB(
                            20 * fem, 0 * fem, 20.86 * fem, 0 * fem),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30 * fem),
                          color: botonescerdito
                              ? Color.fromRGBO(144, 161, 130, 150)
                              : Color.fromRGBO(242, 215, 215, 10),
                        ),
                        child: Center(
                          child: SizedBox(
                            width: 85 * fem,
                            height: 85 * fem,
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
            ),
            Positioned(
              left: 235 * fem,
              top: 75 * fem,
              child: Align(
                child: SizedBox(
                  width: 110 * fem,
                  height: 400 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10 * fem),
                      color: Color(0x7af8eeee),
                    ),
                    child: Padding(
                      padding:  EdgeInsets.all(7*fem),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          if (botonescerdito)
                            InkWell(
                              onTap: () {
                               // Navigator.push(
                                 //   context,
                                   // MaterialPageRoute(
                                    //    builder: (context) => informacion()));
                              },
                              child: Column(
                                children: [
                                  Container(
                                    width: 69 * fem,
                                    height: 55 * fem,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(30 * fem),
                                        color: Color.fromRGBO(
                                            98, 161, 145, 170)),
                                    child: Center(
                                      // porkSQo (15:110)
                                      child: SizedBox(
                                        width: 35 * fem,
                                        height: 35 * fem,
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
                                        fontSize: 9 * ffem,
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
                               //     context,
                                //    MaterialPageRoute(
                                 //       builder: (context) => limpio()));
                              },
                              child: Column(
                                children: [
                                  Container(
                                    width: 69 * fem,
                                    height: 55 * fem,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(30 * fem),
                                        color: Color.fromRGBO(
                                            98, 161, 145, 170)),
                                    child: Center(
                                      // porkSQo (15:110)
                                      child: SizedBox(
                                        width: 30 * fem,
                                        height: 30 * fem,
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
                                        fontSize: 9 * ffem,
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
                               // Navigator.push(
                               //     context,
                               //     MaterialPageRoute(
                                //        builder: (context) => salud()));
                              },
                              child: Container(
                                width: 69 * fem,
                                height: 55 * fem,
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
                                    width: 35 * fem,
                                    height: 35 * fem,
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
                             //   Navigator.push(
                               //     context,
                               //     MaterialPageRoute(
                               //         builder: (context) => alimento()));
                              },
                              child: Container(
                                width: 69 * fem,
                                height: 55 * fem,
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
                                    width: 30 * fem,
                                    height: 30 * fem,
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
                               // Navigator.push(
                               //     context,
                                //    MaterialPageRoute(
                                //        builder: (context) => registros()));
                              },
                              child: Column(
                                children: [
                                  Container(
                                    width: 69 * fem,
                                    height: 55 * fem,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(30 * fem),
                                        color: Color.fromRGBO(
                                            98, 161, 145, 170)),
                                    child: Center(
                                      // porkSQo (15:110)
                                      child: SizedBox(
                                        width: 35 * fem,
                                        height: 35 * fem,
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
                                        fontSize: 8 * ffem,
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
                                    width: 69 * fem,
                                    height: 55 * fem,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(30 * fem),
                                        color: Color.fromRGBO(
                                            98, 161, 145, 170)),
                                    child: Center(
                                      // porkSQo (15:110)
                                      child: SizedBox(
                                        width: 35 * fem,
                                        height: 35 * fem,
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
                                        fontSize: 8 * ffem,
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
                                    width: 69 * fem,
                                    height: 55 * fem,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(30 * fem),
                                        color: Color.fromRGBO(98, 161, 145, 170)),
                                    child: Center(
                                      // porkSQo (15:110)
                                      child: SizedBox(
                                        width: 35 * fem,
                                        height: 35 * fem,
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
                                        fontSize: 8 * ffem,
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
                    )
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle8h5h (208:73)
              left: 372 * fem,
              top: 75 * fem,
              child: Align(
                child: SizedBox(
                  width: 460 * fem,
                  height: 212 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      //color: Color(0xfffff0f0),
                    ),
                    child: _swiper(),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle13KFV (208:83)
              left:  372*fem,
              top:  300*fem,
              child:
              Align(
                child:
                SizedBox(
                  width:  250*fem,
                  height:  170*fem,
                  child:
                  Container(
                    decoration:  BoxDecoration (
                      color:  Color(0xffffe6e6),
                    ),
                    child: grafica(),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle13KFV (208:83)
              left:  635*fem,
              top:  300*fem,
              child:
              Align(
                child:
                SizedBox(
                  width:  195*fem,
                  height:  170*fem,
                  child:
                  Container(
                    decoration:  BoxDecoration (
                      color:  Color(0xffffe6e6),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        width: 250 * fem,
        child: ListView(
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
          return new Image.asset(
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
