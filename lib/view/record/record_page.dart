import 'package:flutter/material.dart';
import 'package:scenarioshelf/view/component/label/label.dart';

class RecordPage extends StatelessWidget {
  const RecordPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.075),
        child: const Column(
          children: [
            Label(
              icon: Icons.book_outlined,
              text: Text('シナリオ'),
            ),
          ],
        ),
      ),
    );
  }
}
