import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:myapp/tablet/usuario/cerditos/registros/registro1.dart';
import 'package:myapp/tablet/usuario/cerditos/registros/registro2.dart';
import 'package:myapp/tablet/usuario/cerditos/registros/registro3.dart';
import 'package:myapp/utils.dart';

import '../../../../desktop/usuario/home.dart';


class registros_tablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return regisapp();
  }
}

class regisapp extends StatefulWidget {
  @override
  State<regisapp> createState() => _regisappState();
}

class _regisappState extends State<regisapp> {
  List<dynamic> datos = [];

  @override
  void initState() {
    super.initState();
    // Llamar a la función para obtener los datos
    consultarcerditas();
  }

  void consultarcerditas() {
    FirebaseFirestore.instance
        .collection('registro_hembra')
        .get()
        .then((QuerySnapshot querySnapshot) {
      setState(() {
        // Almacena los datos en la lista
        datos = querySnapshot.docs.map((doc) => doc.data()).toList();
      });
    });
  }

  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 560 * fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // materialappCtX (20:3)
                        left: 0 * fem,
                        top: 0 * fem,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                              27 * fem, 0 * fem, 0 * fem, 0 * fem),
                          width: 575 * fem,
                          height: 80 * fem,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 194, 199, 20)),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 50),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Builder(
                                  builder: (BuildContext context) {
                                    return InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => home_desk()));
                                      },
                                      child: Image.asset(
                                        'img/mobil/flecha.png',
                                        width: 25.7 * fem,
                                        height: 40.05 * fem,
                                      ),
                                    );
                                  },
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 1 * fem),
                                  width: 494.5 * fem,
                                  height: 132 * fem,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 30 * fem,
                                        top: 12 * fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 229 * fem,
                                            height: 35 * fem,
                                            child: Text(
                                              'REGISTROS',
                                              textAlign: TextAlign.center,
                                              style: SafeGoogleFont(
                                                'Alfa Slab One',
                                                fontSize: 25 * ffem,
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: 1 * fem,
                                                color: Color(0xffffffff),
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
                      Positioned(
                        // ellipse1qQB (15:40)
                        left: 0 * fem,
                        top: 50 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 60 * fem,
                            height: 60 * fem,
                            child: Image.asset(
                              'img/mobil/circulo.png',
                              width: 60 * fem,
                              height: 60 * fem,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // rectangle6m2w (15:41)
                        left: 35 * fem,
                        top: 52.4 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 355 * fem,
                            height: 68 * fem,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 38 * fem,
                        top: 65 * fem,
                        child: Align(
                          child: Container(
                            width: 255 * fem,
                            margin:
                            EdgeInsets.only(left: 5 * fem, right: 5 * fem),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color.fromRGBO(228, 228, 227, 100),
                            ),
                            child: SizedBox(
                              width: 267 * fem,
                              height: 28 * fem,
                              child: Padding(
                                padding: EdgeInsets.only(left: 35 * fem, top: 2 * fem),
                                child: TextField(
                                  onChanged: (value) {
                                    setState(() {
                                      // Filtrar los datos según el valor ingresado en el TextField
                                      if (value.isNotEmpty) {
                                        datos = datos
                                            .where((item) => item['id']
                                            .toString()
                                            .contains(value))
                                            .toList();
                                      } else {
                                        // Si el TextField está vacío, muestra todos los datos nuevamente
                                        consultarcerditas();
                                      }
                                    });
                                  },
                                  decoration: InputDecoration(
                                    hintText: 'ID a buscar',
                                    border: InputBorder
                                        .none, // Elimina la línea inferior
                                  ),
                                  style: TextStyle(fontSize: 10 * fem),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // iconbuscarLes (70:31)
                        left: 51 * fem,
                        top: 72 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 14 * fem,
                            height: 13 * fem,
                            child: Image.asset(
                              'img/mobil/iconbuscar.png',
                              width: 14 * fem,
                              height: 13 * fem,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => registro1_tablet()));
                        },
                        child: Stack(
                          children: [
                            Positioned(
                              // rectangle504as (70:35)
                              left: 312 * fem,
                              top: 65 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 38 * fem,
                                  height: 25 * fem,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(20 * fem),
                                        color:
                                        Color.fromRGBO(144, 161, 130, 200)),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // iconaddDs5 (70:45)
                              left: 323 * fem,
                              top: 70 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 15 * fem,
                                  height: 14.13 * fem,
                                  child: Image.asset(
                                    'img/mobil/iconmas.png',
                                    width: 15 * fem,
                                    height: 14.13 * fem,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        // rectangle15hM1 (31:259)
                        left: 35 * fem,
                        top: 100 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 320 * fem,
                            height: 450 * fem,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xfffff6f6),
                              ),
                              child:Container(
                                child:  Positioned(
                                  left: 43 * fem,
                                  top: 158 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 280 * fem,
                                      height: 550 * fem,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20 * fem),
                                         // color: Colors.blue,
                                        ),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: generateContainers(datos, fem),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
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
    );
  }

  List<Widget> generateContainers(List<dynamic> data, double fem) {
    List<Widget> containers = [];
    for (var item in data) {
      var id = item['id'];
      containers.add(
        Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 13 * fem, // Espacio vertical entre los widgets
            ),
            SizedBox(
              width: 260 * fem,
              height: 60 * fem, // Ajusta la altura según tus necesidades
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20 * fem),
                  color: Color.fromRGBO(254, 193, 178, 200),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10 * fem),
                      child: SizedBox(
                        width: 95 * fem,
                        height: 95 * fem,
                        child: Image.asset(
                          'img/mobil/pork.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 10 * fem, top: 5 * fem),
                        child: ListTile(
                          title: Text('DATOS'),
                          // Utiliza la función menu para mostrar el menú emergente
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('ID: ${item['id']}'),
                              Text('Nombre: ${item['nombre']}'),
                              Text('Peso: ${item['peso']}'),
                              // Puedes agregar más campos según sea necesario
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 35* fem, left: 20 * fem),
                      child: menu(id),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }
    return containers;
  }

  PopupMenuButton<Text> menu(int id) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return PopupMenuButton<Text>(
      itemBuilder: (context) {
        return [
          PopupMenuItem(
            child: Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => registro2_tablet(id)));
                },
                child: Container(
                  width: 50 * fem,
                  height: 20 * fem,
                  child: Center(
                    child: Text(
                      'Macho',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        '',
                        fontSize: 12 * ffem,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          PopupMenuItem(
            child: Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => registro3_tablet(id)));
                },
                child: Container(
                  width: 50 * fem,
                  height: 30 * fem,
                  child: Center(
                    child: Text(
                      'Hoja de vida',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        '',
                        fontSize: 12 * ffem,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          PopupMenuItem(
            child: Center(
              child: Container(
                width: 50 * fem,
                height: 20 * fem,
                child: Center(
                  child: Text(
                    'Crias',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      '',
                      fontSize: 12 * ffem,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ];
      },
    );
  }
}
