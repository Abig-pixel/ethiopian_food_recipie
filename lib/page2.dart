
import 'package:food_recipe/data_and_imports/imports.dart';

void main() {
  runApp(page2());
}

class page2 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {

  final List<FoodsDataModel> FoodData = List.generate(
      name.length,
      (index) => FoodsDataModel(
            '${name[index]}',
            '${url[index]}',
            '${video[index]}',
            '${food_desc[index]} ',
            '${first_ing[index]} ',
            '${Ing_2[index]} ',
            '${Ing_3[index]} ',
            '${Ing_4[index]} ',
            '${Ing_5[index]} ',
            '${Ing_6[index]} ',
            '${Ing_7[index]} ',
            lat[index],
            long[index],
            '${time[index]}',
          ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                  Widget>[
        const SizedBox(height: 30.0),
        Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 35,
                margin: const EdgeInsets.fromLTRB(30, 0.0, 0, 0),
                child: const Text(
                  "Find Best Recipe ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 35,
                margin: const EdgeInsets.fromLTRB(30, 10.0, 0, 0),
                child: const Text(
                  "For Cooking ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            
              Container(
                  height: 30,
               ),
              Container(
                
                height: 400,
                width: 450,
                child: SingleChildScrollView(
                  
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(
                                                    0, 0, 25, 0),
                        child: SizedBox(
                          height: 400,
                          child: ListView.builder(
                            
                              scrollDirection: Axis.horizontal,
                              itemCount: FoodData.length,
                              itemBuilder: (context, index) {
                                return SizedBox(
                                  height: 400,
                                  width: 332,
                                  child: Column(children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                     
                                                    Page_three(
                                                      foodDataModel:
                                                          FoodData[index],
                                                    )));
                                      },
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Stack(
                                      
                                            children: <Widget>[
                                               
         
                                              Container(
                                                child: Padding(
                                                  padding: const EdgeInsets.fromLTRB(
                                                      35, 0,0, 0),
                                                  child: Container(
                                                      height: 380,
                                                      width: 332,
                                                    
                                                      child:

                                                          //Image.asset(Placedata[index].ImageUrl)
                                                          ClipRRect(
                                                            borderRadius: BorderRadius.circular(25.0),
                                                            child: Image.asset(
                                                                FoodData[index]
                                                                    .ImageUrl,
                                                                fit: BoxFit.fill),
                                                          )
                                                          
                                                          ),
                                                ),
                                              ),
                                            
                                           
                                           
                                              Container(
                                                 margin: const EdgeInsets.fromLTRB(
                                                    35, 280, 0, 0),
                                                    padding: const EdgeInsets.fromLTRB(
                                                    10, 0, 20, 0),
                                                color: Color.fromARGB(255, 126, 131, 126).withOpacity(0.5),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  
                                                  children: [
                                                     Text(FoodData[index].name,
                                                                style: const TextStyle(
                                                                    fontWeight:
                                                                        FontWeight.bold,
                                                                    color: Colors.white,
                                                                    fontSize: 25)),
                                                     Text('${FoodData[index].time}',style: TextStyle(color:Colors.white,fontSize: 12)),
                                                  ],
                                                ),
                                              ),
                                             
                                           
                                            ],
                                            
                                          ),
                                        ],
                                      ),
                                    ),
                                    
                                  ]),
                                );
                              }),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(
                                                    0, 20, 0, 0),
            child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       
                       children: [
                                   IconButton(
                                                    icon: Icon(
                                                        Icons.alarm
                                                           ,
                                                        color: Colors.black),
                                                    onPressed: () {
                                                       FlutterAlarmClock.showAlarms();
                                                    }
                                                        //Navigator.popUntil(context, ModalRoute.withName("/MyHomePage")),
                                                     
                                                  ),  
                                  IconButton(
                                                    icon: Icon(
                                                        Icons
                                                            .location_on_outlined,
                                                        color: Colors.black),
                                                    onPressed: () =>
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        GoogleMapScreen())),
                                                  ),
                                  IconButton(
                                                    icon: Icon(
                                                        Icons
                                                            .sports_basketball_outlined,
                                                        color: Colors.black),
                                                    onPressed: () =>
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        HomePage())),
                                                  ),   
                                   
        
        
        
         ],
         
       ),
          )
      ])),
       
    );
  }
}
