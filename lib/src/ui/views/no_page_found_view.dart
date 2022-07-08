import 'package:flutter/material.dart';

class NoPAgeFoundView extends StatelessWidget {
  const NoPAgeFoundView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("404 - Pagina No Encontrada"),
      ),
    );
  }
}
