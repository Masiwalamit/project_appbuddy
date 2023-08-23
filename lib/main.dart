
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  get calendarFormat => calendarFormat;

  get selectedDay => DateTime.now();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Login Screen',
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration:  InputDecoration(
                        hintText: ' Patient Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40)
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'DOB',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40)
                        )
                      ),
                    ),
                    TableCalendar(
                      calendarFormat: calendarFormat,
                      focusedDay: selectedDay,
                      firstDay: DateTime(2000),
                      lastDay: DateTime(2050),
                      headerStyle: HeaderStyle(
                        formatButtonVisible: false,
                      ),
                      onDaySelected: (selectedDay, focusedDay) {
                        setState(() {
                          selectedDay = selectedDay;
                        });
                      },
                    ),

                    const SizedBox(
                      height: 10
                    ),
                    TextFormField(
                      decoration:  InputDecoration(
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40)
                        )
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration:  InputDecoration(
                        hintText: 'Mobile Number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40)
                        )
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                   Container(
                     color: Colors.blueAccent,

                   child: TextFormField(
                     cursorColor:Colors.blueAccent ,
                     decoration: InputDecoration(
                       hintText: '                               Add Patient',
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(35),
                       ),
                     ),
                   ),
                   )],

      )
    )
          ],
        ),
      ),
    );
    // ignore: unused_element
  }
}
