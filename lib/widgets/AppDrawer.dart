import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Header com informações de perfil
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blueAccent,
            ),
            accountName: Text('Nome do Usuário'),
            accountEmail: Text('usuario@email.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://via.placeholder.com/150'), // Imagem fictícia
            ),
          ),
          // Itens do Drawer
          ListTile(
            leading: Icon(Icons.task),
            title: Text('Tasks diárias'),
            onTap: () {
              // Navegação para a tela de tasks diárias
            },
          ),
          ListTile(
            leading: Icon(Icons.accessibility_new),
            title: Text('Meus hábitos'),
            onTap: () {
              // Navegação para a tela de hábitos
            },
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Conta'),
            onTap: () {
              // Navegação para a tela de conta
            },
          ),
          Divider(), // Linha separadora
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Sair'),
            onTap: () {
              // Função de logout
            },
          ),
        ],
      ),
    );
  }
}
