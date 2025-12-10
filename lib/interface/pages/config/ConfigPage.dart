import 'package:flutter/material.dart';
import 'AccountPage.dart';
import 'NotificationsPage.dart';
import 'AcessibilityPage.dart';
import 'PermissionsPage.dart';
import 'AppearancePage.dart';

class ConfigPage extends StatefulWidget {
  const ConfigPage({super.key});

  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      appBar: AppBar(
        title: const Text("Configurações"),
        backgroundColor: const Color(0xFFF7F7F7),
        foregroundColor: const Color(0xFF000000),
        elevation: 0,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/user.png'),
            ),
            title: const Text("Jhonson Silvério Ferreira"),
            subtitle: const Text("Coletor"),
            onTap: () {},
          ),

          const Divider(),

          _option(
            context,
            icon: Icons.person_outline,
            title: "Conta",
            subtitle: "Editar perfil, alterar endereço",
            page: const AccountPage(),
          ),
          _option(
            context,
            icon: Icons.notifications_none,
            title: "Notificações",
            subtitle: "Preferências de coleta, sons",
            page: const NotificationsPage(),
          ),
          _option(
            context,
            icon: Icons.accessibility_new_outlined,
            title: "Acessibilidade",
            subtitle: "Tamanho da fonte, contraste, animações",
            page: const AcessibilityPage(),
          ),
          _option(
            context,
            icon: Icons.lock_outline,
            title: "Permissões",
            subtitle: "Permissão de geolocalização, notificações",
            page: const PermissionsPage(),
          ),
          _option(
            context,
            icon: Icons.color_lens_outlined,
            title: "Aparência",
            subtitle: "Escolha entre tema Claro ou Escuro",
            page: const AppearancePage(),
          ),
        ],
      ),
    );
  }

  Widget _option(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required Widget page,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.chevron_right),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => page),
        );
      },
    );
  }
}
