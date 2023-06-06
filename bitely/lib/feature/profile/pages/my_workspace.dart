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
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            //for example:

            //If you want to display a rectangle:
            Container(
              color: Colors.amber,
              width: 375.w,
              height: 375.h,
            ),

            //If you want to display a square based on width:
            Container(
              color: Colors.green,
              width: 300.w,
              height: 300.w,
            ),

            //If you want to display a square based on height:
            Container(
              color: Colors.blue,
              width: 300.h,
              height: 300.h,
            ),

            //If you want to display a square based on minimum(height, width):
            Container(
              color: Colors.red,
              width: 300.r,
              height: 300.r,
            ),
          ],
        )),
      ),
    );
  }
}
