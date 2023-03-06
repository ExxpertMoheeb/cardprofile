
// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:cardprofile/ApiController.dart';
import 'package:cardprofile/api_model.dart';
import 'package:cardprofile/load_missing_people.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    //getData();
   //Get.put(Mycontroller());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<List<Details>>(
              future: getData(),
              builder: (context, snapshot) {
                return ListView.builder(
                  itemCount: userList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: height,
                      width: width,
                      
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [

                          Container(
                            height: height*0.25,
                            width: width*0.5,

                          
                            decoration: BoxDecoration(
                                color: Colors.yellow.shade800,
                              borderRadius: BorderRadius.circular(120)
                            ),
                            child: Center(
                              child: Text('Wellcome',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
                            ),
                          )
                          ,
                          
                           Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                             children: [
                               ElevatedButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (contex)=>LoadMissingPeople()));                                }, 
                                // ignore: prefer_const_constructors
                                child:Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Center(
                                    child: Text('Load Missing People  ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  backgroundColor: Colors.yellow.shade800,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)
                                  )
                                ),
                                 ),
                                  ElevatedButton(
                                onPressed: (){}, 
                                // ignore: prefer_const_constructors
                                child:Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Center(
                                    child: Text('Search Missing Person  ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  backgroundColor:   Colors.yellow.shade800,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)
                                  )
                                ),
                                 ),
                             ],
                           )
                           
                        
                        
                        ],
                      ),
                    );

                  },);
                  
          
                  
              }
                    )
              
            ),
        ]
          ),
        
      );
      // title: Text('${snapshot.data![6].description.toString()}'),
      // body:GetBuilder<Mycontroller>(
      //   initState: (state) {
      //       Mycontroller.to.getData();
      //   },
      //   builder: (obj) {
      //     return SizedBox(
      //       height: 900,
      //       width: 400,
      //       child: ListView.builder(
      //         itemCount: obj.userList.length,
      //         itemBuilder: (context, index) {
      //         return  ListTile(
      //                  title: Text(obj.userList[index].n),
      //                );
      //       },),
            
      //     );
      //   }
      // )
      //  GetBuilder<Mycontroller>(
      //   initState: (state) {
      //   Get.lazyPut(
      //     () => Mycontroller(),
      //   );
      
      // }, 
     // builder: (obj) {
        //return
      //    SizedBox(
      //     height: 900,
      //     width: 450,
      //     child: ListView.builder(
      //       itemCount: obj.userList.length,
      //       itemBuilder: (context, index) {
      //         return  SizedBox(
      //           height: 100,
      //           width: 450,
      //           child: Center(
      //             child: Text(
      //               '${obj.userList[index].name}',
      //             ),
      //           ),
      //         );
      //       },
      //     ),
      //   );
      // }),
//     );
   }
 }