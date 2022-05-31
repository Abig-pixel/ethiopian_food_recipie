
import 'package:flutter/material.dart';

import 'package:food_recipe/data_and_imports/imports.dart';

class Page_three extends StatefulWidget {
  final FoodsDataModel foodDataModel;
  
  
  const Page_three({Key key, this.foodDataModel})
      : super(key: key);

  @override
  State<Page_three> createState() => _Page_threeState();
}

class _Page_threeState extends State<Page_three> {
   
  VideoPlayerController controller;

  @override
  void initState() {
    loadVideoPlayer();
    super.initState();
  }

  loadVideoPlayer(){
     controller = VideoPlayerController.asset(widget.foodDataModel.video);
     controller.addListener(() {
        if(this.mounted){setState(() {});}
     });
    controller.initialize().then((value){
        setState(() {});
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(
    color: Colors.black, //change your color here
  ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(widget.foodDataModel.name,style:TextStyle(
    color: Colors.black,
  )),
      ),
      body: 
  
     Column(

       children: [
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            
                children: [
                  
                  Padding(
                    padding: const EdgeInsets.fromLTRB(
                                                    20, 0,10, 2),
                    child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                          child: Container(
                            height: 200,
                            width: 320,
                            
                              //aspectRatio: controller.value.aspectRatio,
                               child: VideoPlayer(controller),
                            
                          ),
                        ),
                  ),
                  
                     
        
                 /* Padding(
                    padding: const  EdgeInsets.fromLTRB(10, 5.0, 10, 10),
                    child: SizedBox(
                          height: MediaQuery.of(context).size.height / 3,
                          width: MediaQuery.of(context).size.width,
                          child:
                             /* ClipRRect(
                                borderRadius: BorderRadius.circular(45.0),
                                child: Image.asset(widget.foodDataModel.ImageUrl, fit: BoxFit.fill))*/
                                ClipRRect(
                            borderRadius: BorderRadius.circular(5.0),
                            child: VideoProgressIndicator(
                              controller, 
                              allowScrubbing: true,
                              colors:VideoProgressColors(
                                  backgroundColor: Color.fromARGB(255, 202, 199, 195),
                                  playedColor: Color.fromARGB(255, 64, 190, 106),
                                  bufferedColor: Color.fromARGB(255, 231, 230, 229),
                              )
                            ),
                            
                        ),
                                ),
                  ),*/
                    Padding(
                        padding: const EdgeInsets.fromLTRB(
                                                    36, 0,36, 2),
                       
                            child: VideoProgressIndicator(
                              controller, 
                              allowScrubbing: true,
                              colors:VideoProgressColors(
                                  backgroundColor: Color.fromARGB(255, 202, 199, 195),
                                  playedColor: Color.fromARGB(255, 64, 190, 106),
                                  bufferedColor: Color.fromARGB(255, 231, 230, 229),
                              )
                            ),
                            
                        
                      ),
                       Container(
                         child: Row(
                             children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                                    150, 0,0, 0),
                                  child: IconButton(
                                      onPressed: (){
                                        if(controller.value.isPlaying){
                                          controller.pause();
                                        }else{
                                          controller.play();
                                        }
                  
                                        setState(() {
                                          
                                        });
                                      }, 
                                      icon:Icon(controller.value.isPlaying?Icons.pause:Icons.play_arrow)
                               ),
                                ),
                  
                               /*IconButton(
                                    onPressed: (){
                                      controller.seekTo(Duration(seconds: 0));
                  
                                      setState(() {
                                        
                                      });
                                    }, 
                                    icon:Icon(Icons.stop)
                               )*/
                             ],
                         ),
                      ),
                    Row(
                      children: [
                        Container(
                height: 25,
                margin: const EdgeInsets.fromLTRB(10, 0.0, 0, 5),
                child: const Text(
                  " Ingridients ",
                  style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                  ),
                ),
                
              ),
              /* Padding(
                 padding: const EdgeInsets.fromLTRB(170,0,0,0),
                 child: IconButton(
                                                    icon: Icon(
                                                        Icons
                                                            .location_on_outlined,
                                                        color: Colors.black),
                                                    onPressed: () =>
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                              /*
                                                                builder:
                                                                  (context) =>
                                                                      EntotoMap(
                                                                        foodDataModel:
                                                                            Placedata[index],
                                                                      )*/)),
                                                  ),
               ),*/
                      ],
                    ),
               
                    SingleChildScrollView(
                  
                      child: Column(
                    
                        children: <Widget>[
                          SizedBox(
                           
                            height:200,
                            child: ListView.builder(
                              padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                scrollDirection: Axis.vertical,
                                itemCount: 1,
                                itemBuilder: (context, index) {
                                  return Container(
                                     margin: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                                   
                                    child: Card(
                                      color: Color.fromARGB(246, 248, 248, 248),

                                  child: Column(
                                    children: [
                                      Card(
                                        child: ListTile(
                                                           
                                               title: Text('${widget.foodDataModel.first_ing}'),
                                                           
                                               leading: CircleAvatar(
                                              backgroundImage:
                                                  AssetImage("assets/images/third_all_in_ne.jpg")),
                                                ),
                                      ),
                                     
                                       Card(
                                         child: ListTile(
                                                            
                                             title: Text('${widget.foodDataModel.sec_ing}'),
                                                            
                                             leading: CircleAvatar(
                                            backgroundImage:
                                                AssetImage("assets/images/second_all_in_one.jpg")),
                                              ),
                                       ),
                                      Card(
                                        child: ListTile(
                                                           
                                             title: Text('${widget.foodDataModel.third_ing}'),
                                                           
                                             leading: CircleAvatar(
                                            backgroundImage:
                                                AssetImage("assets/images/all_in_one.jpg")),
                                              ),
                                      ),
                                       Card(
                                         child: ListTile(
                                                            
                                             title: Text('${widget.foodDataModel.fourth_ing}'),
                                                            
                                             leading: CircleAvatar(
                                            backgroundImage:
                                                AssetImage("assets/images/second_all_in_one.jpg")),
                                              ),
                                       ),
                                      Card(
                                        child: ListTile(
                                                           
                                             title: Text('${widget.foodDataModel.fifth_ing}'),
                                                           
                                             leading: CircleAvatar(
                                            backgroundImage:
                                                AssetImage("assets/images/ingredients.jpg")),
                                              ),
                                      ),
                                       Card(
                                         child: ListTile(
                                                            
                                             title: Text('${widget.foodDataModel.sixth_ing}'),
                                                            
                                             leading: CircleAvatar(
                                            backgroundImage:
                                                AssetImage("assets/images/white_pots.jpg")),
                                              ),
                                       ),
                                          Card(
                                            child: ListTile(
                                                               
                                             title: Text('${widget.foodDataModel.sevent_ing}'),
                                                               
                                             leading: CircleAvatar(
                                            backgroundImage:
                                                AssetImage("assets/images/plate_with_bowl.jpg")),
                                              ),
                                          ),
                                       
                                    ],
                                  ),
                                      
                                    ),
                                    
                                  );
                          }),


                          ),
                            /*ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home(
                                                    )));
                                                    
                    },
                    child: const Text("Start Cooking",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        )),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 0, 0, 0)),
                            //
                            
                        minimumSize:
                            MaterialStateProperty.all(const Size(200, 70))),
                  )*/
                        ],
                      ),
                    ),
                  
                
                
                ],
              ),
       ],
     ),
    
      
      
    );
  }
}
