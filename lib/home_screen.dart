import 'package:flutter/material.dart';

class HomeScreen  extends StatefulWidget {
  const HomeScreen ({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int numberPointA=0;
  int numberPointB=0;


  @override
  void initState() {
    //  implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Colors.cyan,
      appBar: AppBar(elevation: 0,
       backgroundColor:Colors.cyan ,
       title: const Center(child: Text("Basketball Points")),


      ),
      body:Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
           const Expanded(
            child: Image(image: AssetImage("asset/images/fireball.png"),width: 300,)),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             
             Column(
                    children:  [
                      const Text("Team A",
                       style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                      ),
                      const SizedBox(height: 3),
                      Text("$numberPointA" ,
                        style: const TextStyle(
                          fontSize: 50,
                          color: Colors.white
             
                        ),
                      ),
                      MaterialButton(color: Colors.orange,
                        onPressed: () {
                          setState(() {
                            numberPointA+=1;
                          });
                        },
                        child:const Text("Add 1 point",style: TextStyle(color: Colors.white),),),
             
                      MaterialButton(color: Colors.orange,
                        onPressed: () {
                          setState(() {
                            numberPointA+=2;
                          });
                        },
                        child:const Text("Add 2 point",style: TextStyle(color: Colors.white),),),
             
                      MaterialButton(color: Colors.orange,
                        onPressed: () {
                          setState(() {
                            numberPointA+=3;
                          });
                        },
                        child:const Text("Add 3 point",style: TextStyle(color: Colors.white),),),
             
                    ],
                  ),
              const SizedBox(
                height: 220,
                child: VerticalDivider(
                    thickness: 5,
                   color: Colors.red,
              
              
              
              
              
                ),
              ),
              Column(
                children: [
                  const Text("Team B",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                      ),
                      const SizedBox(height: 3,),
                   Text("$numberPointB",
                    style: const TextStyle(
                     
                       fontSize: 50,
                          color: Colors.white

                    ),
                  ),
                  MaterialButton(color: Colors.orange,
                    onPressed: () {
                      setState(() {
                        numberPointB+=1;
                      });
                    },
                    child:const Text("Add 1 point",style: TextStyle(color: Colors.white),),),

                  MaterialButton(color: Colors.orange,
                    onPressed: () {
                      setState(() {
                        numberPointB+=2;
                      });
                    },

                    child:const Text("Add 2 point",style: TextStyle(color: Colors.white),),),

                  MaterialButton(color: Colors.orange,
                    onPressed: () {
                      setState(() {
                        numberPointB+=3;
                      });
                    },
                    child:const Text("Add 3 point",style: TextStyle(color: Colors.white),),),

                ],
              ),




            ],
          ),
           const SizedBox(height: 100,),
          
          MaterialButton(color: Colors.orange,
            onPressed: () {
            setState(() {
              numberPointA=0;
              numberPointB=0;
          
            });
          
          }, child: const Text("Reset",style:TextStyle(color: Colors.white),)),
        
        ],
      ),


    );
  }
}







