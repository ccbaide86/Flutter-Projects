import "package:contacto/pages/card.dart";
import 'package:contacto/widgets/icons.dart';
import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 60.0),
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.pinkAccent,
                child: Text(
                  'P',
                  style: TextStyle(fontSize: 60, color: Colors.white),
                ),
              ),
            ),
            Text(
              "Pascualillo",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            Iconos(),
            Divider(),
            Padding(
              padding: EdgeInsets.all(10),
              child: RowsCard(),
            )
          ],
        ),
      ),
    );
  }
}

