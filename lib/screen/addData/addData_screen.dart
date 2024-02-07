import 'package:flutter/material.dart';

class AddDataScreen extends StatefulWidget {
  const AddDataScreen({super.key});

  @override
  State<AddDataScreen> createState() => _AddDataScreenState();
}

class _AddDataScreenState extends State<AddDataScreen> {
  TextEditingController student_grid = TextEditingController();
  TextEditingController student_name = TextEditingController();
  TextEditingController student_std = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(appBar: AppBar(title: const Text("Add Data Screen"),
    centerTitle: true,
      backgroundColor: Colors.blue,
    ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
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
      ),
    ),
    );
  }

  }


