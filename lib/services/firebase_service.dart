import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';



final FirebaseAuth _auth = FirebaseAuth.instance;

Future<void> registerUser(String email, String password) async {
  try {
    if (email.endsWith('sena.edu.co')) {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      print('Registro exitoso');
      // Puedes navegar a la siguiente pantalla después del registro exitoso
    } else {
      print('El correo electrónico debe terminar en sena.edu.co');
    }
  } catch (e) {
    print('Error de registro: $e');
  }
}


class Auth{
  final FirebaseAuth _firebaseAuth =FirebaseAuth.instance;

  User? get currentUser => _firebaseAuth.currentUser;

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async{
    await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password
    );
  }
}


Future<void> addRegistroHembra(int id, String nombre, DateTime fechaIngreso, DateTime fechaNacimiento, String peso,int pesones) async {
  CollectionReference collectionReference = FirebaseFirestore.instance.collection('registro_hembra');

  try {
    await collectionReference.add({
      'id': id,
      'nombre': nombre,
      'fecha_ingreso': fechaIngreso,
      'fecha_nacimiento': fechaNacimiento,
      'peso': peso,
      'pesones':pesones,
    });

    print('hembra registrado correctamente.');
  } catch (e) {
    print('Error al registrar el macho: $e');
  }
}

Future<void> addRegistroMacho(int id, String nombre, DateTime fechaIngreso, DateTime fechaNacimiento, String peso, int id_hembra) async {
  CollectionReference collectionReference = FirebaseFirestore.instance.collection('registro_macho');

  try {
    await collectionReference.add({
      'id': id,
      'nombre': nombre,
      'fecha_ingreso': fechaIngreso,
      'fecha_nacimiento': fechaNacimiento,
      'peso': peso,
      'id_hembra': id_hembra,
    });

    print('Macho registrado correctamente.');
  } catch (e) {
    print('Error al registrar el macho: $e');
  }
}