import 'package:flutter/material.dart';

class ActivityDetailPage extends StatefulWidget {
  const ActivityDetailPage({super.key});

  @override
  State<ActivityDetailPage> createState() => _ActivityDetailPageState();
}

class _ActivityDetailPageState extends State<ActivityDetailPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Activity Detail PAGE",style: TextStyle(fontSize: 25),),
    );
  }
}
