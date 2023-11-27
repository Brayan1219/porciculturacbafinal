import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return infomacho();
  }
}

class infomacho extends StatefulWidget {
  @override
  State<infomacho> createState() => _infomachoState();
}

class _infomachoState extends State<infomacho> {
  List<dynamic> datos = [];

  @override
  void initState() {
    super.initState();
    // Llamar a la función para obtener los datos
    consultarDatos();
  }

  // Función para obtener los datos de Firestore
  void consultarDatos() {
    FirebaseFirestore.instance.collection('registro_macho').get().then((QuerySnapshot querySnapshot) {
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
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 844 * fem,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Container(
            width: 574 * fem,
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 31 * fem),
                  width: double.infinity,
                  height: 796 * fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // rectangle54oq (172:4)
                        left: 0 * fem,
                        top: 0 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 390 * fem,
                            height: 560 * fem,
                            child: Image.network(
                              'img/mobil/fondoinicio.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // ellipse1mTM (172:5)
                        left: 0 * fem,
                        top: 513 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 102 * fem,
                            height: 94 * fem,
                            child: Image.network(
                              'img/mobil/circulo.png',
                              width: 102 * fem,
                              height: 94 * fem,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // rectangle6V8T (172:6)
                        left: 38 * fem,
                        top: 513 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 339 * fem,
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
                        // rectangle71sV (172:7)
                        left: 341 * fem,
                        top: 466 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 233 * fem,
                            height: 120 * fem,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // ellipse2KNP (172:8)
                        left: 288 * fem,
                        top: 419 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 102 * fem,
                            height: 94 * fem,
                            child: Image.network(
                              'img/mobil/circulo.png',
                              width: 102 * fem,
                              height: 94 * fem,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // informacionShu (172:9)
                        left: 84.5 * fem,
                        top: 14 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 221 * fem,
                            height: 35 * fem,
                            child: Text(
                              'INFORMACION',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Alfa Slab One',
                                fontSize: 25 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.3675 * ffem / fem,
                                letterSpacing: 1 * fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // informacionWxf (172:10)
                        left: 150.5 * fem,
                        top: 48 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 89 * fem,
                            height: 14 * fem,
                            child: Text(
                              'MACHO',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Alfa Slab One',
                                fontSize: 10 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.3675 * ffem / fem,
                                letterSpacing: 0.4 * fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // iconmenupby (172:15)
                        left: 25 * fem,
                        top: 22 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 25.7 * fem,
                            height: 14.28 * fem,
                            child: Image.network(
                              'img/mobil/flecha.png',
                              width: 25.7 * fem,
                              height: 14.28 * fem,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // rectangle24LKR (172:20)
                        left: 25 * fem,
                        top: 161 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 339 * fem,
                            height: 479 * fem,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30 * fem),
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // rectangle27StF (172:22)
                        left: 47 * fem,
                        top: 225 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 296 * fem,
                            height: 571 * fem,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20 * fem),
                                color: Color(0xfffbf4f4),
                              ),
                              child: infomacho2(datos),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // cerdito6N1D (172:28)
                        left: 64 * fem,
                        top: 69 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 269 * fem,
                            height: 156 * fem,
                            child: Image.network(
                              'img/mobil/cerdito1.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // rectangle25sTm (172:27)
                  width: 390 * fem,
                  height: 17 * fem,
                  child: Image.network(
                    'img/mobil/fondoinicio.png',
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

class infomacho2 extends StatelessWidget {
  final List<dynamic> datos;

  infomacho2(this.datos);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 150,
      child: ListView.builder(
        itemCount: datos.length,
        itemBuilder: (context, index) {
          final item = datos[index]; // Obtén un elemento de la lista de datos

          // Convierte los Timestamp a objetos DateTime
          final fechaIngreso = (item['fecha_ingreso'] as Timestamp).toDate();
          final fechaNacimiento = (item['fecha_nacimiento'] as Timestamp).toDate();

          // Formatea las fechas en un formato legible (solo fecha)
          final formattedFechaIngreso = DateFormat('yyyy-MM-dd').format(fechaIngreso);
          final formattedFechaNacimiento = DateFormat('yyyy-MM-dd').format(fechaNacimiento);

          // Aquí puedes mostrar los datos en un ListTile o en cualquier otro widget
          return ListTile(
            title: Text(item['nombre']), // Reemplaza 'nombre' por el nombre del campo que deseas mostrar
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('ID: ${item['id']}'),
                Text('Fecha de Ingreso: $formattedFechaIngreso'),
                Text('Fecha de Nacimiento: $formattedFechaNacimiento'),
                Text('Peso: ${item['peso']}'),
                // Puedes agregar más campos según sea necesario
              ],
            ),
          );
        },
      ),
    );
  }
}