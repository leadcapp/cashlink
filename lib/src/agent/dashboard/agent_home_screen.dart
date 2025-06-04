import 'package:flutter/material.dart';

class AgentHomeScreen extends StatelessWidget {
  static const routeName = '/agent_home';


  const AgentHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text('Agent Dashboard'),
      ),
      body: Center(
        child: Text(
          'Welcome to the Agent Dashboard',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action for the button
        },
        child: const Icon(Icons.add),
      ),

    );
  }
}
