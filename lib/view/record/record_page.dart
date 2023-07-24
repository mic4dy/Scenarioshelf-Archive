import 'package:flutter/material.dart';
import 'package:scenarioshelf/constant/app_color.dart';
import 'package:scenarioshelf/view/component/label/label.dart';

class RecordPage extends StatelessWidget {
  const RecordPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.075),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Label(
              icon: Icons.book_outlined,
              text: Text('シナリオ'),
            ),
            SizedBox(
              width: double.infinity,
              height: 256,
              child: Card(
                elevation: 1,
                color: AppColor.ui.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
