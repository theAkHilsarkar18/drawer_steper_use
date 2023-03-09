import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
        ),
        drawer: Drawer(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.pink,
                alignment: Alignment.center,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 50,
                  child: FlutterLogo(size: 50),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) => Container(
                    height: 70,
                    width: double.infinity,
                    color: index % 2 == 0 ? Colors.white : Colors.pink),
                itemCount: 5,
              ),

            ],
          ),
        ),
        body: Stepper(
          currentStep: i,
          onStepContinue: () {
            setState(() {
              if(i<3)
                {
                  i++;
                }
            });
          },
          onStepCancel: () {
            setState(() {
              if(i>0)
              {
                i--;
              }
            });
          },
          steps: [
            Step(title: Text("Step 1"), content: TextField(),),
            Step(title: Text("Step 2"), content: TextField(),),
            Step(title: Text("Step 3"), content: TextField(),),
            Step(title: Text("Step 4"), content: TextField(),),
          ],
        ),
      ),
    );
  }
  int i = 0;
}
