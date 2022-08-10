import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/screen/home/homepage.dart';
import 'package:provider1/screen/home/providerpage.dart';

void main() {
  runApp(
    ChangeNotifierProvider<ProviderPage>(
      create: (context) => ProviderPage(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context)=>HomePage(),
        },
      ),
    ),
  );
}
