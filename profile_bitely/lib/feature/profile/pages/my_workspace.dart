import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyWorkspace extends StatefulWidget {
  const MyWorkspace({super.key});

  @override
  State<MyWorkspace> createState() => _MyWorkspaceState();
}

class _MyWorkspaceState extends State<MyWorkspace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Appbar"),
      ),
      body: Center(
        child: SizedBox(
          height: 50.h,
          width: 50.w,
        ),
      ),
    );
  }
}
