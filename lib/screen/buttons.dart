import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/tags_text.dart';
import 'extracted_data.dart';

class Buttons extends StatelessWidget {
   Buttons({super.key});

  final nameController=TextEditingController();

  final nationalIDController=TextEditingController();
   final formKey = GlobalKey<FormState>();
   @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xfffbfdfd),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
                side: const BorderSide(color: Color(0xff334f4d),width: 4),shadowColor:Color(0xff2E494BFF) ,
                fixedSize: const Size(170, 25),
              ),
            onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => ExtractedData()),);
              if(formKey.currentState!.validate()){
                print('${nameController.text}');
              }


            }, child: TagsText(textValue:'Analyse user data'),
          ),

          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xfffbfdfd),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
                side: const BorderSide(color: Color(0xff334f4d),width: 4),shadowColor:Color(0xff2E494BFF) ,
                fixedSize: const Size(170, 25),
              ),
              onPressed: (){
                Navigator.push( context,MaterialPageRoute(builder: (context) => ExtractedData()),);
                if(formKey.currentState!.validate()){
                  print('${nationalIDController.text}');
                }

              }, child: TagsText(textValue:'Analyse user data')),
        ],
      ),
    );
  }
}
