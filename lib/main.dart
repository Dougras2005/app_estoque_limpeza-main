import 'package:app_estoque_limpeza/presentation/pages/produto_page.dart';
import 'package:app_estoque_limpeza/presentation/pages/usuarios_page.dart';
import 'package:flutter/material.dart';
import 'presentation/pages/fornecedor_page.dart';
import 'presentation/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Estoque Limpeza',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProdutosHomePage(),
      routes: {
        '/cadastroProduto': (context) =>
            const ProdutosPage(), // Adicione a página de cadastro de produto
        '/cadastroFornecedor': (context) =>
            const FornecedorPage(),
            '/cadastrodeusuario': (context) =>
            const UsuariosPage(), // Adicione a página de cadastro de fornecedor
      },
    );
  }
}
