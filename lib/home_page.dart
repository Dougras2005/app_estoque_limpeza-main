import 'package:app_estoque_limpeza/presentation/pages/usuarios_page.dart';
import 'package:app_estoque_limpeza/users/main_home_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const MainHomePage(),
    const UsuariosPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gestão de Administrador e Funcionários'),
        backgroundColor: const Color.fromARGB(255, 25, 250, 190),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Cabeçalho do Drawer
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/profile_image.png'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Bem-vindo!',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            // Menu para a página de Administrador
            ListTile(
              leading: const Icon(Icons.pets, color: Colors.teal),
              title: const Text('Administrador'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const UsuariosPage()),
                );
              },
            ),
            // Menu para a página de Funcionário
            ListTile(
              leading: const Icon(Icons.people, color: Colors.teal),
              title: const Text('Funcionário'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const UsuariosPage()));
              },
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pets),
            label: 'Administador',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Funcionário',
          ),
        ],
//      currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal,
        onTap: _onItemTapped,
      ),
    );
  }
}
