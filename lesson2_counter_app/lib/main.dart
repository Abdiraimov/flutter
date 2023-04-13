// import бул бардык флаттерге тиешелуу нерселерди өзүнө камтыйт
import 'package:flutter/material.dart';
import 'package:lesson2_counter_app/secondPage.dart';
import 'package:lesson2_counter_app/thirdPage.dart';
//void Эч нерсе кайтарбайт
//main негизиги функция
// ()  функция экенин билдирет
// {} функциянын денеси

void main() {
  // runApp тиркеменин башталышы. ал ичине виджет алат
  // MyApp() виджеттин аталышы
  runApp(const MyApp(count: null,));
}
// class MyApp  класс
// extends мурас алуу => StatelessWidget
class MyApp extends StatelessWidget {
  // класстын конструктору
  const MyApp({super.key, required count});
// override 
  // Бул виджет колдонмоңуздун түпкү негизи болуп саналат.
  @override
  // build куруу. ал өзүнө виджет алат
  // BuildContext адрес. виджеттерди көзөмөлдөөчү  вектор
  Widget build(BuildContext context) {
    // return кайтарат MaterialApp ды
    // MaterialApp материалдык дизайны бар жаңы флаттер колдонмосун түзөт
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme тема MaterialApp тиешелүү свойства
      theme: ThemeData(
        // 
        primarySwatch: Colors.blue,
      ),
      // home: үй MaterialApp тын свойствосу
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  // логикалык маселе орнотобуз
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Тапшырма 1", 
           style: TextStyle(color: Colors.black),
          ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(
              // Экрандын акырына чейин созулат
            width: double.infinity,
            height: 30,
              // центрге коет
              child:  Center(
                child: Text(
                "Сан: $index",
                style: const TextStyle(fontSize: 20),
                )),

                // төрт бурчтуу фигуранын параметрлери
              decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(8)),
            ),
        const SizedBox(height: 20,),
            Row(
              // кнопкаларды жанаша жана ортого коюу жолдору
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.red,),
              // кнопканы басканда индекс иштейт(-)
                onPressed: (){
                 setState(() {
                   index--;
                 });
                
              }, child: const Icon(Icons.remove) ),
              const SizedBox(width: 10,
              ),
              ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.green,),
               // кнопканы басканда индекс иштейт(+)
                onPressed: () {
                setState(() {
                index++;  
                });
                
              }, child: const Icon(Icons.add)),
             
            ],
            ),
            const SizedBox(height: 10,),
             IconButton(
                onPressed: (){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context)=>  SecondPage(
                    count: index,
                    )
                    )
                  );
                }, icon: const 
                Icon(Icons.next_plan, 
                size: 50, 
                color: Colors.purple,
                )
                ), 
                // 3-button
                const SizedBox(height: 20),
             IconButton(
                onPressed: (){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context)=>  ThirdPage(
                    count: index,
                    )
                    )
                  );
                }, icon: const 
                Icon(Icons.diamond, 
                size: 50, 
                color: Colors.red,
                )
                ), 
                                         
            ],
          ),
        ),
        ),
      );    
  }  
}
