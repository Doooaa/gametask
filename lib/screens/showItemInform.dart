import 'package:flutter/material.dart';

class item extends StatelessWidget {
Map<String,dynamic>formItems ;
  item(this.formItems,{super.key});
   
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
        
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
              ),
              child: Image.asset("images/doaa2.jpg",),width: 100,height: 200,),
            
            Text(formItems['name'].toString()), 
         
             
        ],
      )
    );
  }
}


