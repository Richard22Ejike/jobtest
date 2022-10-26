import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:helptheguy/common/appbar.dart';
import 'package:helptheguy/utils/utils.dart';

class information extends StatelessWidget {
  const information({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 20),
        child: Column(
          children: [
            Material(
              elevation: 2,
              shadowColor: Colors.black,
              child: Container(
                height: 170,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(topRight: Radius.circular(8),topLeft:Radius.circular(8) ),
                  color: Color.fromARGB(255, 19, 91, 121),

                ),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color.fromARGB(255, 71, 127, 150),

                        ),
                        child:  Icon(Icons.warehouse_outlined,color: Colors.grey.shade500, size: 30,),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Paragraph Limited',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 30,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 208, 240, 253),
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: const Center(
                              child: Text('Informal sector',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 51, 95, 113),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text('ID: MCI-23-02-00001',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500
                            ),),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Material(
              elevation: 2,
              shadowColor: Colors.black,
              child: Container(
                height: 70,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DottedBorder(
                     dashPattern: [3],
                      color: Colors.blue[400]!,
                      padding: const EdgeInsets.all(8),
                      borderType: BorderType.values[2],
                      strokeWidth: 1,
                      child:Text('General Information',
                        style: TextStyle(
                            color: Color.fromARGB(255, 103, 160, 184),
                            fontSize: 14,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  const Text('Applications',
                  style: TextStyle(
                    color: Color.fromARGB(255, 188, 191, 205)
                  ),)
                  ],
                ),
              ),
            ),

            const SizedBox(
              height: 10,
            ),
            Expanded(child: Container(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: GlobalVariables.Information.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(GlobalVariables.Information[index]['title']!,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 188, 191, 205),
                            fontSize: 17,
                            fontWeight: FontWeight.w500
                        ),),
                      const SizedBox(height: 5,),
                      Text(GlobalVariables.Information[index]['body']!,
                        style: const TextStyle(
                            color: GlobalVariables.primaryColor,
                            fontSize: 17,
                            fontWeight: FontWeight.w500
                        ),),
                      const SizedBox(height: 10,)
                    ],
                  );
                },
            )))
          ],
        ),
      ),
    );
  }
}
