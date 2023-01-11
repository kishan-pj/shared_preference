import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceScreen extends StatefulWidget {
  const SharedPreferenceScreen({super.key});

  @override
  State<SharedPreferenceScreen> createState() => _SharedPreferenceScreenState();
}

class _SharedPreferenceScreenState extends State<SharedPreferenceScreen> {
  @override
  _setDataToSharedPref(String text) async{
    try{
      final SharedPreferences prefs =await SharedPreferences.getInstance();
      await prefs.setString('my_key',text);
    }catch(e){
      debugPrint(e.toString());
    } 
  }
  
  // _getDataFromSharedpref()async {
  //   final SharedPreferences prefs =await SharedPreferences.getInstance();
  //   final String? value =prefs.getString("my_key");
  //   if (value != null) {
  //     setState(() {
  //       data =value;
  //     });
  //   }else{
  //     setState(() {
  //       data='No data found';
  //     });
      
  //   }
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shared Preferences'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          TextFormField(),
          ElevatedButton(onPressed: () {}, child: const Text("Save")),
          ElevatedButton(onPressed: () {}, child: const Text("Show Data"))

        ]),
      ),
      
    );
  }
}