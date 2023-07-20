import 'package:flutter/material.dart';

import 'auth/auth_widget.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AuthWidget()
    );
  }

}

void main() {
  const app = App();
  runApp(app);
}

