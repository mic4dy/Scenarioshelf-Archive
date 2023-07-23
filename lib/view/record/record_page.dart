import 'package:flutter/material.dart';
import 'package:scenarioshelf/view/component/page_frame/fade_up_page_app_bar.dart';

class RecordPage extends StatelessWidget {
  const RecordPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: FadeUpPageAppBar(
        title: Text('Record Page'),
      ),
    );
  }
}
