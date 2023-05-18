import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:genie_task/custom_button.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int groupValue = 1;
  int groupValue2 = 1;

  var start;
  var end;
  DateTime _dateTime=DateTime.now();
  DateTime _dateTime2=DateTime.now();

  void _showDatePicker(){
    showDatePicker(
      context: context,
       initialDate: DateTime.now(), 
       firstDate: DateTime(2020,01,01),
        lastDate: DateTime(2035,12,31),
        ).then((value){
          setState(() {
            _dateTime=value!;
             start = DateFormat('yyyy/MM/dd').format(_dateTime);
             print(start);
          });
        });
  }

  void _showDatePicker2(){
    showDatePicker(
      context: context,
       initialDate: DateTime.now(), 
       firstDate: DateTime(2020,01,01),
        lastDate: DateTime(2035,12,31),
        ).then((value){
          setState(() {
            _dateTime2=value!;
            end = DateFormat('yyyy/MM/dd').format(_dateTime2);
            print(end);
          });
        });
  }

  @override
  void initState() {
     start = DateFormat('yyyy/MM/dd').format(_dateTime);
    end = DateFormat('yyyy/MM/dd').format(_dateTime);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Center(
                  child: Text(
                    'Shift Planner',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: size.width * 0.75,
                          height: size.height * 0.062,
                          decoration: BoxDecoration(
                            color: const Color(0XFFF4F7F9),
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black45,
                                blurRadius: 1,
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                          child: TextField(
                            onChanged: (value) {},
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(top: 8, bottom: 12),
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                size: 20,
                                color: Color(0XFFB7BAC2),
                              ),
                              hintText: "Search",
                              hintStyle: TextStyle(
                                fontSize: 15,
                                color: Color(0XFFB7BAC2),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: size.width * 0.15,
                        height: size.height * 0.062,
                        decoration: BoxDecoration(
                          color: const Color(0XFFF89818),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Icon(
                          Icons.multiple_stop_sharp,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Container(
                        width: size.width * 0.16,
                        height: size.height * 0.04,
                        decoration: BoxDecoration(
                          color: const Color(0XFFF4F7F9),
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black45,
                              blurRadius: 1,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                'David',
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Color(0XFFFF6368),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Icon(
                                  Icons.close,
                                  size: 12,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: size.width * 0.22,
                        height: size.height * 0.04,
                        decoration: BoxDecoration(
                          color: const Color(0XFFF4F7F9),
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black45,
                              blurRadius: 1,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                'AA 99 999',
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Color(0XFFFF6368),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Icon(
                                  Icons.close,
                                  size: 12,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: size.width * 0.26,
                        height: size.height * 0.04,
                        decoration: BoxDecoration(
                          color: const Color(0XFFF4F7F9),
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black45,
                              blurRadius: 1,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                DateFormat('d. MMM yyyy').format(_dateTime2),
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Color(0XFFFF6368),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Icon(
                                  Icons.close,
                                  size: 12,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Container(
                        width: size.width * 0.16,
                        height: size.height * 0.04,
                        decoration: BoxDecoration(
                          color: const Color(0XFFF4F7F9),
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black45,
                              blurRadius: 1,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                '08:00',
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Color(0XFFFF6368),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Icon(
                                  Icons.close,
                                  size: 12,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: size.width * 0.16,
                        height: size.height * 0.04,
                        decoration: BoxDecoration(
                          color: const Color(0XFFFF6368),
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black45,
                              blurRadius: 1,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                'Clear',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Icon(
                                Icons.close,
                                size: 12,
                                color: Color(0XFFFF6368),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Available Shifts',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    )),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  //  height: size.height * 0.70,
                  child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    //physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return Container(
                                    child: AlertDialog(
                                      actions: [
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "Filter",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  "Clear",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color(0XFFFF6368)),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Text(
                                                          'Start Date',
                                                          style: TextStyle(
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                        )),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          DateFormat('d. MMM yyyy').format(_dateTime),
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                        ),
                                                        const SizedBox(
                                                          width: 30,
                                                        ),
                                                        InkWell(
                                                          onTap: _showDatePicker,
                                                          child: Icon(
                                                            Icons
                                                                .date_range_rounded,
                                                            size: 16,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    //   Divider(
                                                    //   height: 1,
                                                    //   thickness: 5,
                                                    //   color: Colors.black,
                                                    // ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 10),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Text(
                                                            'End Date',
                                                            style: TextStyle(
                                                              fontSize: 10,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                          )),
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            DateFormat('d. MMM yyyy').format(_dateTime2),
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                          ),
                                                          const SizedBox(
                                                            width: 30,
                                                          ),
                                                          InkWell(
                                                            onTap: _showDatePicker2,
                                                            child: Icon(
                                                              Icons
                                                                  .date_range_rounded,
                                                              size: 16,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Divider(
                                                        color: Colors.black,
                                                        height: 1,
                                                        thickness: 1,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Text(
                                                          'Start Time',
                                                          style: TextStyle(
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                        )),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          '10:00',
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                        ),
                                                        const SizedBox(
                                                          width: 80,
                                                        ),
                                                        Icon(
                                                          Icons
                                                              .watch_later_rounded,
                                                          size: 16,
                                                        ),
                                                      ],
                                                    ),
                                                    //   Divider(
                                                    //   height: 1,
                                                    //   thickness: 5,
                                                    //   color: Colors.black,
                                                    // ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 10),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Text(
                                                            'End Time',
                                                            style: TextStyle(
                                                              fontSize: 10,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                          )),
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            '18:00',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                          ),
                                                          const SizedBox(
                                                            width: 75,
                                                          ),
                                                          Icon(
                                                            Icons
                                                                .watch_later_rounded,
                                                            size: 16,
                                                          ),
                                                        ],
                                                      ),
                                                      Divider(
                                                        color: Colors.black,
                                                        height: 10,
                                                        thickness: 10,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 5,),
                                            Align(//Select car/License plate
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                'Select car/License plate',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ),
                                            // const SizedBox(
                                            //   height: 5,
                                            // ),
                                            Row(
                                              children: [
                                                Text(
                                                  'AA 00 000',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                const Spacer(),
                                                IconButton(
                                                  onPressed: () {
                                                    showDialog(
                                                        context: context,
                                                        builder: (context) {
                                                          return SingleChildScrollView(
                                                            child: Container(
                                                              child: AlertDialog(
                                                                actions: [
                                                                  Column(
                                                                    children: [
                                                                      Row(
                                                                        children: [
                                                                          Text(
                                                                            "Select Car",
                                                                            style: TextStyle(
                                                                                fontSize:
                                                                                    16,
                                                                                fontWeight:
                                                                                    FontWeight.w600),
                                                                          ),
                                                                          const Spacer(),
                                                                         IconButton(onPressed: (){
                                                                          Navigator.pop(context);
                                                                         }, icon: Icon(Icons.close,size: 16,),),
                                                                        ],
                                                                      ),
                                                                      const SizedBox(
                                                                        height:
                                                                            10,
                                                                      ),
                                                                      Container(
                                                                        width: size
                                                                                .width *
                                                                            0.75,
                                                                        height: size
                                                                                .height *
                                                                            0.062,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: const Color(
                                                                              0XFFF4F7F9),
                                                                          borderRadius:
                                                                              BorderRadius.circular(5),
                                                                          boxShadow: const [
                                                                            BoxShadow(
                                                                              color:
                                                                                  Colors.black45,
                                                                              blurRadius:
                                                                                  1,
                                                                              offset:
                                                                                  Offset(0, 0),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        child:
                                                                            TextField(
                                                                          onChanged:
                                                                              (value) {},
                                                                          keyboardType:
                                                                              TextInputType.text,
                                                                          decoration:
                                                                              const InputDecoration(
                                                                            contentPadding: EdgeInsets.only(
                                                                                top: 8,
                                                                                bottom: 12),
                                                                            border:
                                                                                InputBorder.none,
                                                                            prefixIcon:
                                                                                Icon(
                                                                              Icons.search,
                                                                              size:
                                                                                  20,
                                                                              color:
                                                                                  Color(0XFFB7BAC2),
                                                                            ),
                                                                            hintText:
                                                                                "Search",
                                                                            hintStyle:
                                                                                TextStyle(
                                                                              fontSize:
                                                                                  15,
                                                                              color:
                                                                                  Color(0XFFB7BAC2),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                       Row(
                                                                         children: [
                                                                          Text('Toyota/AA00000',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                                                                           const Spacer(),
                                                                           Radio(value: 1, 
                                                                      groupValue: groupValue,
                                                                           activeColor: Colors.green,
                                                                           onChanged: (val){
                                                                            print(val);
                                                                            setState(() {
                                                                               groupValue=val!;
                                                                            });
                                                                      },
                                                                      ),                                     
                                                                         ],
                                                                       ),
                                                                       Row(
                                                                         children: [
                                                                          Text('Toyota/AA00000',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                                                                           const Spacer(),
                                                                           Radio(value: 2, 
                                                                      groupValue: groupValue,
                                                                           activeColor: Colors.green,
                                                                           onChanged: (val){
                                                                            print(val);
                                                                            setState(() {
                                                                               groupValue=val!;
                                                                            });
                                                                      },
                                                                      ),                                     
                                                                         ],
                                                                       ),
                                                                       Row(
                                                                         children: [
                                                                          Text('Toyota/AA00000',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                                                                           const Spacer(),
                                                                           Radio(value: 3, 
                                                                      groupValue: groupValue,
                                                                           activeColor: Colors.green,
                                                                           onChanged: (val){
                                                                            print(val);
                                                                            setState(() {
                                                                               groupValue=val!;
                                                                            });
                                                                      },
                                                                      ),                                     
                                                                         ],
                                                                       ),
                                                                       Row(
                                                                         children: [
                                                                          Text('Toyota/AA00000',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                                                                           const Spacer(),
                                                                           Radio(value: 4, 
                                                                      groupValue: groupValue,
                                                                           activeColor: Colors.green,
                                                                           onChanged: (val){
                                                                            print(val);
                                                                            setState(() {
                                                                               groupValue=val!;
                                                                            });
                                                                      },
                                                                      ),                                     
                                                                         ],
                                                                       ),
                                                                      Container(
                                                                        width: 90,
                                                                        height: 30,
                                                                        decoration: BoxDecoration(
                                                                          color: Color(0XFFF89818),
                                                                          borderRadius: BorderRadius.circular(5)
                                                                        ),
                                                                        child: TextButton(onPressed: (){
                                                                          Navigator.pop(context);
                                                                        }, 
                                                                        child: Text('Submit',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.white),
                                                                        ),
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          );
                                                        });
                                                  },
                                                  icon: Icon(
                                                    Icons.keyboard_arrow_right,
                                                    size: 18,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            // TextField(
                                            //   decoration: InputDecoration(
                                            //     isDense: true,
                                            //     contentPadding:
                                            //         EdgeInsets.all(0.0),
                                            //   ),
                                            //   minLines: 1,
                                            //   maxLines: 1,
                                            // ),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Divider(
                                                        height: 0,
                                                        thickness: 0.5,
                                                        color: Colors.grey,
                                                      ),
                                            ),
                                          const SizedBox(height: 5,),
                                            Align(//Select Driver
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                'Select Driver',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),

                                            ),
                                            // const SizedBox(
                                            //   height: 5,
                                            // ),
                                            Row(
                                              children: [
                                                Text(
                                                  'Aminul Islam',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                const Spacer(),
                                                IconButton(
                                                  onPressed: () {
                                                    showDialog(
                                                        context: context,
                                                        builder: (context) {
                                                          return Container(
                                                            child: AlertDialog(
                                                              actions: [
                                                                Column(
                                                                  children: [
                                                                    Row(
                                                                      children: [
                                                                        Text(
                                                                          "Select Driver",
                                                                          style: TextStyle(
                                                                              fontSize:
                                                                                  16,
                                                                              fontWeight:
                                                                                  FontWeight.w600),
                                                                        ),
                                                                        const Spacer(),
                                                                        IconButton(onPressed: (){
                                                                        Navigator.pop(context);
                                                                       }, icon: Icon(Icons.close,size: 16,),),
                                                                      ],
                                                                    ),

                                                                    const SizedBox(
                                                                      height:
                                                                          10,
                                                                    ),
                                                                     Row(
                                                                       children: [
                                                                        Text('Aminul Islam',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                                                                         const Spacer(),
                                                                         Radio(value: 1, 
                                                                    groupValue: groupValue2,
                                                                         activeColor: Colors.green,
                                                                         onChanged: (value){
                                                                          print(value);
                                                                          setState(() {
                                                                             groupValue2=value!;
                                                                          });
                                                                    },
                                                                    ),                                     
                                                                       ],
                                                                     ),
                                                                     Row(
                                                                       children: [
                                                                        Text('Aminul Islam',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                                                                         const Spacer(),
                                                                         Radio(value: 2, 
                                                                    groupValue: groupValue2,
                                                                         activeColor: Colors.green,
                                                                         onChanged: (value){
                                                                          print(value);
                                                                          setState(() {
                                                                             groupValue2=value!;
                                                                          });
                                                                    },
                                                                    ),                                     
                                                                       ],
                                                                     ),
                                                                     Row(
                                                                       children: [
                                                                        Text('Aminul Islam',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                                                                         const Spacer(),
                                                                         Radio(value: 3, 
                                                                    groupValue: groupValue2,
                                                                         activeColor: Colors.green,
                                                                         onChanged: (value){
                                                                          print(value);
                                                                          setState(() {
                                                                             groupValue2=value!;
                                                                          });
                                                                    },
                                                                    ),                                     
                                                                       ],
                                                                     ),
                                                                     Row(
                                                                       children: [
                                                                        Text('Aminul Islam',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                                                                         const Spacer(),
                                                                         Radio(value: 4, 
                                                                    groupValue: groupValue2,
                                                                         activeColor: Colors.green,
                                                                         onChanged: (value){
                                                                          print(value);
                                                                          setState(() {
                                                                             groupValue2=value!;
                                                                          });
                                                                    },
                                                                    ),                                     
                                                                       ],
                                                                     ),
                                                                    Container(
                                                                      width: 90,
                                                                      height: 30,
                                                                      decoration: BoxDecoration(
                                                                        color: Color(0XFFF89818),
                                                                        borderRadius: BorderRadius.circular(5)
                                                                      ),
                                                                      child: TextButton(onPressed: (){
                                                                        Navigator.pop(context);
                                                                      }, 
                                                                      child: Text('Submit',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.white),
                                                                      ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        });
                                                  },
                                                  icon: Icon(
                                                    Icons.keyboard_arrow_right,
                                                    size: 18,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            // TextField(
                                            //   decoration: InputDecoration(
                                            //     isDense: true,
                                            //     contentPadding:
                                            //         EdgeInsets.all(0.0),
                                            //   ),
                                            //   minLines: 1,
                                            //   maxLines: 1,
                                            // ),

                                           const Align(
                                              alignment: Alignment.topLeft,
                                              child: Divider(
                                                        height: 0,
                                                        thickness: 0.3,
                                                        color: Colors.grey,
                                                      ),
                                            ),
                                            const SizedBox(height: 15,),
                                             InkWell(
                                              onTap: (){
                                                Navigator.of(context).pop();
                                              },
                                               child: Container(
                                                                        width: 100,
                                                                        height: 40,
                                                                        decoration: BoxDecoration(
                                                                          color: Color(0XFFF89818),
                                                                          borderRadius: BorderRadius.circular(5)
                                                                        ),
                                                                        child: TextButton(onPressed: (){
                                                                          Navigator.pop(context);
                                                                        }, 
                                                                        child: Text('Apply',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),
                                                                        ),
                                                                        ),
                                                                      ),
                                             )
                                          ],
                                        ),
                                      ],
                                    ),
                                  );
                                }
                                );
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.12,
                            child: Card(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 5, top: 11, bottom: 10),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: CircleAvatar(
                                            maxRadius: 25,
                                            backgroundImage: AssetImage(
                                                'assets/image/user.jpg'),
                                          ),
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 10),
                                            child: Text(
                                              'David Morgan',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: EdgeInsets.only(top: 5),
                                              child: Text(
                                                'AA 99 999',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Padding(
                                              padding: EdgeInsets.only(top: 5),
                                              child: Text(
                                                '11.Jan 2023',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
