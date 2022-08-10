import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/screen/home/providerpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var homeProvidert;
  var homeProviderf;

  @override
  Widget build(BuildContext context) {
    homeProviderf = Provider.of<ProviderPage>(context, listen: false);
    homeProvidert = Provider.of<ProviderPage>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Counter"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("${homeProvidert.i}",style: TextStyle(fontSize: 25),),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      homeProviderf.add();
                    },
                    child: Text("Add"),
                    style: ElevatedButton.styleFrom(primary: Colors.blue),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      homeProviderf.multy2();
                    },
                    child: Text("2x"),
                    style: ElevatedButton.styleFrom(primary: Colors.lightBlue),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      homeProviderf.multy3();
                    },
                    child: Text("3x"),
                    style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      homeProviderf.multy6();
                    },
                    child: Text("6x"),
                    style: ElevatedButton.styleFrom(primary: Colors.lightBlue),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      homeProviderf.min();
                    },
                    child: Text("Min"),
                    style: ElevatedButton.styleFrom(primary: Colors.blue),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
