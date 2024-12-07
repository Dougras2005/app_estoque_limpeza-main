import 'package:app_estoque_limpeza/home_page.dart';
import 'package:app_estoque_limpeza/presentation/ViewModel/usuario_viewmodel.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usuarioController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();
  final UsuarioViewModel userViewModel = UsuarioViewModel();

  loginUser() async {
    final usuario = usuarioController.text;
    final senha = senhaController.text;

    final loginSucess = await userViewModel.loginUser(usuario, senha);

    if (mounted) {
      if (loginSucess) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Usuário ou senha incorretos.'))
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}