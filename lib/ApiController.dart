

import 'dart:convert';


import 'package:cardprofile/api_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

// class Mycontroller extends GetxController {
//   static Mycontroller get to => Get.find();
  http.Response? response;
  List<Details> userList = [];
  Future<List<Details>> getData() async {

    userList.clear();
    response = await http.get(
        Uri.parse(
          "https://f741-123-201-245-141.in.ngrok.io/viewrecords",
        ),
        // headers: <String, String>{
        //   'Content-Type': 'application/json-patch+json',
        // }
        );
        //userList=json.decode(response!.body);
    if (response!.statusCode == 200) {
      // ignore: unnecessary_null_comparison
      if (response!.body != null) {
        print(response!.body);
        for (var data in json.decode(response!.body)) {
          Details model = Details(
            name: data['name'],
            addressRecord: data['addressRecord'],
            age: data['Age'],
            description: data['description'],
            height: data['Height'],
            id: data['id'],
            imgPath: data['imgPath'],
            matchesFound: data['MatchesFound'],
            missingFrom: data['Missing_From'],
            sex: data['Sex'],

          
          );
           userList.add(model);

         // update();
        }
       //return userList;
        print('list ${userList}');
        
      }
      return userList;
    } else {
     //return userList;
      print('error');
    }
   // update();
    return userList;
    
  //}
}
