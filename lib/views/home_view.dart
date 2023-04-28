import 'package:flutter/material.dart';
import 'package:flutter_ar/app_colors.dart';
import 'package:flutter_ar/local_web_objects_view.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("assets/wt.jpg"),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.mainColor),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const LocalAndWebObjectsView()));
                },
                child: const Text("Add image"),
              ),
              const SizedBox(
                height: 30,
              ),
              Image.asset("assets/phone.png"),
            ],
          ),
        ),
      ),
    );
  }
}
