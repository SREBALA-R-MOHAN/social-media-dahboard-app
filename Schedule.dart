import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
//import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter_application_1/Smd/home.dart';

class Schedule extends StatefulWidget {
  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  var height, width;

  final _caption = TextEditingController();
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (pickedTime != null && pickedTime != selectedTime) {
      setState(() {
        selectedTime = pickedTime;
      });
    }
  }

  File? _imageFile;

  // Function to pick an image from gallery
  Future<void> _pickImageFromGallery() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        _imageFile = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 252, 113, 159),
          ),
          height: height,
          width: width,
          child: Column(
            children: [
              Container(
                  decoration: BoxDecoration(
                    color: Colors.pink,
                  ),
                  height: height * 0.30,
                  width: width,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 20),
                            child: InkWell(
                              onTap: () {
                                // Open drawer when sort icon is tapped
                                //Scaffold.of(context).openDrawer();
                              },
                              child: const Icon(
                                Icons.sort,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        'assess/images/CURRENT1.png',
                        height: 100,
                        width: 700,
                      ),
                    ],
                  )),
              Container(
                  height: height * 0.70,
                  width: width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      const Text(
                        'SCHEDULE YOUR POST',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 252, 113, 159)),
                      ),
                      SizedBox(
                          width: 250,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: const BorderSide(width: 2)),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 10.0),
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Enter a Caption',
                            ),
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        onPressed: () => _selectDate(context),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 252, 113, 159))),
                        child: Text(
                          'Select Date',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () => _selectTime(context),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 252, 113, 159))),
                        child: Text(
                          'Select Time',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Selected Date: ${selectedDate.year}-${selectedDate.month}-${selectedDate.day}',
                        style: TextStyle(
                          color: Color.fromARGB(255, 252, 113, 159),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Selected Time: ${selectedTime.hour}:${selectedTime.minute}',
                        style: TextStyle(
                          color: Color.fromARGB(255, 252, 113, 159),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      MaterialButton(
                          color: Color.fromARGB(255, 252, 113, 159),
                          child: const Text(
                            'Pick Image From Your Gallery',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          onPressed: () {
                            _pickImageFromGallery();
                          }),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 252, 113, 159))),
                        child: const Text('Schedule my Post',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                      )
                    ],
                  )),
            ],
          )),
    );
  }
}
