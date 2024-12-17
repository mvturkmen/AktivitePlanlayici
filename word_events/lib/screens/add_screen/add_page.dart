import 'package:flutter/material.dart';
import 'package:word_events/globals/app_theme.dart';
import 'package:word_events/screens/add_screen/add_widgets.dart';

final AppColors appColors = AppColors();

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: addUI(context),
    );;
  }
}