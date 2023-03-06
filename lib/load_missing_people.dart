import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoadMissingPeople extends StatefulWidget {
  const LoadMissingPeople({super.key});

  @override
  State<LoadMissingPeople> createState() => _LoadMissingPeopleState();
}

class _LoadMissingPeopleState extends State<LoadMissingPeople> {
   final pageController = PageController(initialPage: 0);
   @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  var index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade800,
    body:  PageView(
            controller: pageController,
            onPageChanged: (value) {
              setState(() {
                index = value + 1;
              });
            },
            children: [
              screens(),
              screens(),
              screens(),
              screens(),
              screens(),
            ]),
    );

}


  Widget screens() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(top: height * 0.1,left: width*0.1,right: width*0.1,bottom: height*0.1),
      child: Card(
        elevation: 20,
        child: Column(
          children: [
            Container(
              height: height*0.12,
              width: width,
              color: Colors.white,
              child: const Text(
              ' Ali',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black38),
            ),
            ),
            
         
            Container(
             
              decoration: const BoxDecoration(
 color: Colors.black,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                
              ),
              child: Padding(
                padding: EdgeInsets.only(left: width*0.1,right: width*0.1,top: height*0.06,),
                child: Column(
                  children: [
                       SizedBox(
                height: height * 0.05,
            ),
                const Center(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,

                  ),
                ),
                 SizedBox(
                height: height * 0.05,
            ),
                 Text('Age: 40'),
                  Text('Height: 173'),
                   Text('Six: Femal'),
                    Text('MatchesFound: No'),
                    // Text('MatchesFound: 40'),
                     Text('address_record: india city phase 1 street 2 Zip 4857'),

                  Text('description: B30478 Celesticl city phase 1'),
                   
                    Text("Name: Angla khawa"),
                     Text('Missing_From: 23_02_10'),
                  ],
                ),
              ),
            )
            //Image.asset(
             // 'asset/Mask iPhone X@3x.png',
             // height: height * 0.7,
              //w/idth: width,
            // ),
          ],
          
        ),
      ),
    );
  }
}
