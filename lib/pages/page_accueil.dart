import 'package:app1/pages/page_profil.dart';
import 'package:flutter/material.dart';

class PageAccueil extends StatefulWidget {
  const PageAccueil({super.key});

  @override
  State<PageAccueil> createState() => _PageAccueilState();
}

class _PageAccueilState extends State<PageAccueil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 21, 10, 225),
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text("Ma Page d'accueil"),
        // Méthode 1 : Navigation avec route nommée (à gauche)
        leading: IconButton(
          icon: const Icon(Icons.person),
          tooltip: 'Profil (pushNamed)',
          onPressed: () {
            Navigator.pushNamed(context, '/profil');
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Rechercher',
            onPressed: () {
              print("Votre page de recherche");
            },
          ),
          // Méthode 2 : Navigation directe avec MaterialPageRoute (à droite)
          IconButton(
            icon: const Icon(Icons.account_circle),
            tooltip: 'Profil (MaterialPageRoute)',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PageProfil(),
                ), // <-- Majuscules corrigées
              );
            },
          ),
          // Navigation vers les Paramètres
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Paramètres',
            onPressed: () {
              Navigator.pushNamed(context, '/parametres');
            },
          ),
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text("Bienvenue dans mon application"),
            Text("Ici c'est la page d'accueil"),
          ],
        ),
      ),
    );
  }
}
