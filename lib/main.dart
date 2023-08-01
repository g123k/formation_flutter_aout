import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:formation_flutter/res/app_colors.dart';
import 'package:formation_flutter/res/app_icons.dart';
import 'package:formation_flutter/res/app_vectorial_images.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Avenir',
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.yellow,
          primary: AppColors.blue,
        ),
        appBarTheme: const AppBarTheme(
          foregroundColor: AppColors.blue,
        ),
        useMaterial3: true,
      ),
      home: const AddCard(),
    );
  }
}

class AddCard extends StatelessWidget {
  const AddCard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    double width = size.width;
    double height = size.heightadd *
    ;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mes scans'),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(AppIcons.barcode),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(AppVectorialImages.illEmpty),
            SizedBox(
              height: height * 0.1,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.3),
              child: Text(
                'Vous n\'avez pas encore scanné de produit',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            TextButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor: AppColors.blue,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(22.0))),
                backgroundColor: AppColors.yellow,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Commencer'.toUpperCase()),
                  const Icon(Icons.arrow_right_alt_outlined),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
