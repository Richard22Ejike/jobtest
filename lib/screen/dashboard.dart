
import 'package:flutter/material.dart';


import '../common/appbar.dart';
import '../models/product.dart';
import '../service/productservice.dart';
import '../utils/utils.dart';

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {




  late Future<Album> futureAlbum;


  String dropdownvalue = 'Today';
  final items = [
    'Today',
    'Tomorrow',
    'Next week',
    'Next month',
  ];
   String _currentItemSelected = 'Today';



  @override
  void initState() {
    super.initState();
    _currentItemSelected = items[0];

    futureAlbum = fetchAlbum();
  }



  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
       return Scaffold(

      backgroundColor: Colors.white,
      appBar: const DefaultAppBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0,right: 20,left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: const [
                        Text('DASHBOARD',
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 13,
                              fontWeight: FontWeight.w500
                          ),),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Overview',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w700
                          ),),
                      ],
                    ),

                    Column(
                      children: [
                        const SizedBox(
                          height: 7,
                        ),
                        InkWell(
                          child: Material(
                            elevation: 3,
                            child: Container(
                              width: 150,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: GlobalVariables.secondaryColor,
                              ),

                              child: const Center(child: Text('+ Business place',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500
                                ),)),
                            ),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Material(
                  elevation: 2,
                  shadowColor: Colors.black,
                  child: Stack(

                   children: [
                     Container(
                       height: 150.0,
                       width: double.infinity,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(2),
                         color: Color.fromARGB(255, 231, 240, 244),
                       ),

                     ),
                     Positioned(
                      bottom: 40.0,
                       left: 250.0,
                       child: Container(
                         height: 150.0,
                         width: 150.0,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(200.0),
                             color: Color.fromARGB(255, 237, 244, 247)
                                 .withOpacity(0.4)),
                       ),
                     ),
                     Positioned(
                       top: 85.0,
                       right: 310.0,
                       child: Container(
                           height: 100.0,
                           width: 100.0,
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(150.0),
                               color: Color.fromARGB(255, 237, 244, 247)
                                   .withOpacity(0.5))),
                     ),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Text('Revenue',
                                 style: TextStyle(
                                     color: Colors.blue[500],
                                     fontSize: 15,
                                     fontWeight: FontWeight.w500
                                 ),),

                               Container(
                                 width: 90,
                                 height: 35,
                                 decoration: BoxDecoration(
                                     color: GlobalVariables.primaryColor,
                                     borderRadius: BorderRadius.circular(8)
                                 ),
                                 child: Center(
                                   child:
                                     PopupMenuButton<String>(
                                       itemBuilder: (context) {
                                         return items.map((String items) {
                                           return PopupMenuItem(
                                             value: items,
                                             child: Text(items),
                                           );
                                         }).toList();
                                       },
                                       child: Row(
                                         mainAxisSize: MainAxisSize.min,
                                         children: <Widget>[
                                           Text(_currentItemSelected, style: const TextStyle(
                                             color: Colors.white,
                                             fontWeight: FontWeight.bold,
                                             fontSize: 14,
                                           ),),
                                           const Icon(Icons.keyboard_arrow_down,color: Colors.white,),
                                         ],
                                       ),
                                       onSelected: (v) {
                                         setState(() {

                                           _currentItemSelected = v;
                                         });
                                       },
                                     )
                                 ),
                               )
                             ],
                           ),
                           const SizedBox(height: 15,),
                           const Text.rich(TextSpan(
                             text: '₦ 4,000,000',
                               style: TextStyle(
                                   color: GlobalVariables.secondaryColor,
                                   fontSize: 20,
                                   fontWeight: FontWeight.w500
                               ),
                             children: <InlineSpan>[
                               TextSpan(
                                 text:'.00',
                                 style: TextStyle(
                                   color: GlobalVariables.secondaryColor,
                                   fontSize: 12,
                                 )
                               )
                             ]
                           )),
                           const SizedBox(
                             height: 10,
                           ),
                           Text('REVENUE COLLECTED',
                             style: TextStyle(
                                 color: Colors.blue[500],
                                 fontSize: 10,
                                 fontWeight: FontWeight.w500
                             ),),
                         ],
                       ),
                     )
                   ],
                  )
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 80,


                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Material(
                          elevation: 3,
                          shadowColor: GlobalVariables.Dashboard[index]['color']!,

                          child: Container(
                            width: 200,
                            decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(
                                  color: GlobalVariables.Dashboard[index]['color']!,
                                  width: 1,
                                style: BorderStyle.values[
                                  1
                                ]
                              ))
                            ),

                            child: ListTile(
                              tileColor: Colors.white,
                              title: Text(GlobalVariables.Dashboard[index]['title']!),
                            subtitle: Text(GlobalVariables.Dashboard[index]['body']!),
                              leading: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: GlobalVariables.Dashboard[index]['color']!,
                                ),
                                child: Center(
                                  child: Icon(
                                    GlobalVariables.Dashboard[index]['icon']!,
                                    color: Colors.black,

                                    size: 15.0,
                                           ),
                                ),
                              ) ,
                            ),
                          ),
                        ),
                      );
                    }, ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text('My Businesses',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700
                  ),),
                const SizedBox(
                  height: 30,
                ),
                Material(
                  elevation: 2,
                  shadowColor: Colors.black,
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: GlobalVariables.BarColor
                        ,
                        borderRadius: const BorderRadius.only(topLeft:Radius.circular(5) ,topRight: Radius.circular(5))
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 15.0,left: 15),
                      child: Text('NAME'),
                    ),
                  ),
                ),
                 FutureBuilder<Album>(
                    future: futureAlbum,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Material(
                          elevation: 2,
                          shadowColor: Colors.black,
                          child: Container(
                            height: 300,
                            child: ListView.separated(
                              itemCount: 7,
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int index) {
                                return ListTile(tileColor: Colors.white,
                                  trailing: const Icon(
                                      Icons.arrow_forward_ios),
                                  title: Text(snapshot.data!.title),);
                              },
                              separatorBuilder: (BuildContext context,
                                  int index) {
                                return const SizedBox(height: 4,);
                              },),
                          ),

                        );

                      }
                      else if (snapshot.hasError) {
                        return Text('${snapshot.error}');
                      }
                      return const Center(child: CircularProgressIndicator());
                    }
                  ),
              ],
            ),
          ),
          InkWell(

            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 40,
                color: Color.fromARGB(255, 24, 147, 177),
                child:  Center(child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.link_outlined,color: Colors.white,),

                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text('Link Demand Notice',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500
                        ),),
                    ),
                  ],
                )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
