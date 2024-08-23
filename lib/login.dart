import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furniture_application/shopping.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _nameState();
}

class _nameState extends State<login> {
  bool IsObscure=true;
  var formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 93,),
                Text("Hello !",style: TextStyle(color: Color(0xff909090),fontSize: 30,fontWeight: FontWeight.w600),),
                 SizedBox(height: 5,),
                 Text("WELCOME BACK",style: TextStyle(color: Color(0xff303030),fontSize: 30),),
                 SizedBox(height: 30,),
                 TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: "Enter your email",
                    label: Text("Email")
                  ),
                 ),
                 SizedBox(height:30,),
                 TextFormField(
                  validator: (value) {
                    if(value!.length <9){
                      return "the password less than 9";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: IsObscure,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        IsObscure=!IsObscure;
                      });
                    }, icon:IsObscure? 
                    Icon(Icons.visibility_off_outlined):
                    Icon(Icons.remove_red_eye_outlined)),
                    hintText: "Enter your password",
                    label: Text("Password")
                  ),
                 ),
                 SizedBox(height:15,),
                 Center(
                   child: TextButton(onPressed: (){}, child: Text("Forgot Password",
                   style: TextStyle(
                    color: Color(0xff303030),
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                   ),)),
                 ),
                 SizedBox(height:40,),
                 SizedBox(
                  height: 65,
                  width: double.infinity,
                   child: ElevatedButton(onPressed: (){
                     if(formKey.currentState!.validate()){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
                        return shopping_screen();
                      },));
                     }
                   },
                    child: Text("Log in",style: TextStyle(fontSize: 20),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff000000),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                      )
                      
                      
                    ),),
                 )
            
                 
                    
              ],
              
            ),
          ),
        ),
      ) ,
    );
  }
}