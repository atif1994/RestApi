import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restapi/Controller/api_model.dart';
import 'package:restapi/model/Post_model.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   GetApi getApi = GetApi();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text("Home Page"),
//       ),
//       body: Column(
//         children: [
//           FutureBuilder<List<PostModel>>(
//               future: getApi.getapidata(),
//               builder: (context, snapshot) {
//                 if(!snapshot.hasData){
//                   return Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Center(child: CircularProgressIndicator()),
//                     ],
//                   );
//                 } else
//                 return Expanded(
//                   child: ListView.builder(
//                       itemCount: getApi.listdata.length,
//                       physics: ScrollPhysics(),
//                       itemBuilder: (context, index) {
//                         return Card(
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(getApi.listdata[index].title.toString()),
//                               Text(getApi.listdata[index].body.toString()),
//                             ],
//                           ),
//                         );
//                       }),
//                 );
//               })
//         ],
//       ),
//     );
//   }
// }
