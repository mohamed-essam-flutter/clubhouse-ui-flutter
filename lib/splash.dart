import 'package:flutter/material.dart';
import 'package:furniture_application/login.dart';

class SplashScreeen extends StatefulWidget {
  const SplashScreeen({super.key});

  @override
  State<SplashScreeen> createState() => _nameState();
}

class _nameState extends State<SplashScreeen> {
  @override
  void initState() {
    // TODO: implement initState
    
    Future.delayed(Duration(seconds: 3),() => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => login(),)));
  }
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
            
      backgroundColor: Color(0xFFE1E3E6),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("MAKE YOUR",style: TextStyle(
                color: Color(0xff606060),
                fontSize: 20,
              ),),
              SizedBox(height: 10,),
              Text("HOME BEAUTIFUL",style: TextStyle(
                color: Color(0xff303030),
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 20,),
            Container(
              child:Image.network('https://img.freepik.com/premium-photo/mockup-frame-farmhouse-living-room-interior-3d-render_939033-5677.jpg') ,
            ),
            SizedBox(height: 20,),
            // ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
            //   backgroundColor: Colors.black
            // ) ,child: Text("Get Started",style: TextStyle(
            //   color: Colors.white
            // ),))
          ],),
        ),
      ),

    );
    return scaffold;
  }
}