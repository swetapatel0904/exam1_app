import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../utils/global.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController student_grid = TextEditingController();
  TextEditingController student_name = TextEditingController();
  TextEditingController student_std = TextEditingController();
  String path = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(appBar: AppBar(
      title: const Text("Home Screen"),
      centerTitle: true,
      backgroundColor: Colors.blue,
    ),
      body: Align(
        alignment: Alignment.bottomRight,
        child: InkWell(
            onTap: () {
              setState(() {
                Navigator.pushNamed(context, 'add_data');
              });
            },
            child: const Icon(Icons.add_circle, size: 60,
              color: Colors.lightGreen,)
        ),
      ),


    ),

    );
  }

  Widget updateDialog() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 20),
        height: MediaQuery
            .sizeOf(context)
            .height * 0.30,
        width: MediaQuery
            .sizeOf(context)
            .width * 0.85,
        color: Colors.white,
        child: Stack(
          alignment: Alignment.center,
          children: [
            path == null ?
            const CircleAvatar(
              radius: 90,
            ) : CircleAvatar(
              radius: 90,
              backgroundImage: FileImage(File(path!)),
            ),
            Align(
                alignment: Alignment(0.5, 0.5),
                child: IconButton(
                  onPressed: () async {
                    ImagePicker picker = ImagePicker();
                    XFile? image = await picker.pickImage(
                        source: ImageSource.camera);
                    setState(() {
                      path = image!.path;

                    });
                  },
                  icon: const Icon(
                    Icons.add_a_photo_rounded,
                    color: Colors.blueAccent,
                    weight: 50,
                  ),
                )
            ),
            SizedBox(height: 20,),
            Column(
              children: [
                TextFormField(
                  controller: student_grid,
                  validator: (value) {
                    if(value!.isEmpty)
                    {
                      return "grid is required";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      hintText: "Enter grid",
                      border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  controller: student_name,
                  validator: (value) {
                    if(value!.isEmpty)
                    {
                      return "name is required";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      hintText: "Enter Name",
                      border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  controller: student_std,
                  validator: (value) {
                    if(value!.isEmpty)
                    {
                      return "std is required";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      hintText: "Enter Std",
                      border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(height: 20,),
                Center(child: ElevatedButton(
                  onPressed: (){
                    setState(() {

                    });
                  },
                  child: const Text("submit",style: TextStyle(color: Colors.blue,fontSize: 25,)),


                ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
