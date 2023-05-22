import 'package:chat/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // await FirebaseFirestore.instance.collection('mensagens').doc('msg1').set({
  //   'nome': 'Jorge',
  //   'texto': 'Olá, tudo bem?',
  // });

  // QuerySnapshot snapshot = await FirebaseFirestore.instance.collection('mensagens').get();
  // for (var d in snapshot.docs) {
  //   print(d.data());
  // }

  // DocumentSnapshot snapshot = await FirebaseFirestore.instance.collection('mensagens').doc('msg2').get();
  // print(snapshot.data());

  // FirebaseFirestore.instance.collection('mensagens').snapshots().listen((dado) {
  //   for (var d in dado.docs) {
  //     print(d.data());
  //   }
  // });

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        iconTheme: const IconThemeData(
          color: Colors.blue,
        ),
      ),
      home: const ChatScreen(),
    );
  }
}
