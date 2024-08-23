import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furniture_application/user_input.dart';

class shopping_screen extends StatefulWidget {
  const shopping_screen({super.key});

  @override
  State<shopping_screen> createState() => _nameState();
}

class _nameState extends State<shopping_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        backgroundColor:Color(0xffffffff) ,
        leading: Icon(Icons.search_sharp),
        title: Text("Favorites",style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
        actions: [
          Icon(Icons.shopping_cart_outlined),
          SizedBox(width: 10,)
        ],
      ),
      body: ListView.separated(
        itemCount: user_list.length,
        separatorBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Container(
                  
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.network(user_list[index].Image??"",fit: BoxFit.fill,),
            
                ),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(user_list[index].buyer??"",style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff606060)
                    ),),
                    Text(user_list[index].price??"",style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff303030)
                    ))
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Icon(Icons.highlight_remove_sharp,color: Colors.black,),
                    SizedBox(height: 50,),                
                    Icon(Icons.shopify_rounded,color: Colors.black,)
                  ],
                )
              ],
            ),
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return Divider(color:Color(0xffF0F0F0),);
        },
      ),
    );
  }
}