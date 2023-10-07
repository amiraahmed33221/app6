import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/tags_text.dart';
import 'buttons.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  final nameController = TextEditingController();
  final nationalIDController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Form(
        key: formKey,
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/Egypt.jpg"),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      labelText: 'Name',
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    validator:(data){
                      if(data!.isEmpty){
                        return 'This field is required';
                      }
                    } ,
                  ),
                ),
              ),
              const SizedBox(height: 7),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 50,
                  child: TextFormField(
                    controller: nationalIDController,
                    decoration: InputDecoration(
                      labelText: 'National ID',
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    validator:(data) {
                      if (data!.isEmpty) {
                        return 'This field is required';
                      }
                    },
                  ),
                ),
              ),
              const SizedBox(height: 7),
              Buttons(),



            ],
          ),
        ),
      ),
    );
  }
}
