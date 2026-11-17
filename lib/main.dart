import 'package:app1/pages/page_accueil.dart';
import 'package:app1/pages/page_parametres.dart';
import 'package:app1/pages/page_profil.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MonApplication());
}

class MonApplication extends StatelessWidget {
  const MonApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MonApplication',
      initialRoute: '/accueil', // Définit la première page affichée
      routes: {
        '/accueil': (context) => const PageAccueil(),
        '/profil': (context) => const PageProfil(),
        '/parametres': (context) => const PageParametres(),
      },
      onUnknownRoute: (context) =>MaterialPageRoute(builder: (context)=> PageAccueil()
      ),
    );
  }
}
