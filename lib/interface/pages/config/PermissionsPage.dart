import 'package:flutter/material.dart';

class PermissionsPage extends StatelessWidget {
  const PermissionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Conta"),
      ),
      body: const Center(
        child: Text("Página de Conta"),
      ),
    );
  }
}
