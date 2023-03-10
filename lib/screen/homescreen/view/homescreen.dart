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
          title: Text("Edit Your Profile",style: TextStyle(color: Colors.white,letterSpacing: 1)),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.all_inclusive,size: 35),
            ),
          ],
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
              if(i<10)
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
            Step(title: Text("Profile Picture"), content: TextField(),),
            Step(title: Text("Name"), content: TextField(),),
            Step(title: Text("Phone"), content: TextField(),),
            Step(title: Text("Email"), content: TextField(),),
            Step(title: Text("DOB"), content: TextField(),),
            Step(title: Text("Gender"), content: TextField(),),
            Step(title: Text("Current Location"), content: TextField(),),
            Step(title: Text("Nationalities"), content: TextField(),),
            Step(title: Text("Religion"), content: TextField(),),
            Step(title: Text("Language"), content: TextField(),),
            Step(title: Text("Biography"), content: TextField(),),

          ],
        ),
      ),
    );
  }
  int i = 0;
}
