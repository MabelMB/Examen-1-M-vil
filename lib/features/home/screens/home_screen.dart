import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/models/activity.dart';
import 'package:flutter_application_1/features/home/widgets/interactive_activity_card.dart';
import 'package:flutter_application_1/features/perfil/screens/profile_screen.dart';

//Clase: ¿Qué actividades existen en esta pantalla
//y cuántas debo mostrar? Crea los objetos

//Qué tipo de widget es
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//Dónde está su estado. Está heredando de MyHomePage
//porque está representando su estado!!
//stateful >> widget + clase state porque ES CON ESTADO
//El State es donde Flutter mantiene la información que cambia durante la vida del widget
class _MyHomePageState extends State<MyHomePage> {
  //le damos las actividades que tenemos
  List<Activity> activityList = [
    Activity(
      title: "Pasos diarios", 
      trailingText: "Meta: 10,000 pasos", 
      icon: Icons.directions_walk, 
      iconColor: Colors.blueGrey
      ),

    Activity(
      title: "Rutina de fuerza", 
      trailingText: "Tren superior/pesas", 
      icon: Icons.fitness_center, 
      iconColor: Colors.black
      ),

    Activity(
      title: "Natación", 
      trailingText: "Meta: 1,000 metros", 
      icon: Icons.pool, 
      iconColor: Colors.blue
      ),

    Activity(
      title:"Rutina de fuerza", 
      trailingText: "Meta: 50 kg", 
      icon: Icons.line_weight, 
      iconColor: Colors.greenAccent
      ),

    Activity(
      title:"Desayuno", 
      trailingText: "Comidas saludables", 
      icon: Icons.food_bank, 
      iconColor: Colors.red
      ),

    Activity(
      title: "Pasos diarios", 
      trailingText: "Meta: 10,000 pasos", 
      icon: Icons.directions_walk, 
      iconColor: Colors.blueGrey
      ),

    Activity(
      title: "Rutina de fuerza", 
      trailingText: "Tren superior/pesas", 
      icon: Icons.fitness_center, 
      iconColor: Colors.black
      ),

    Activity(
      title: "Natación", 
      trailingText: "Meta: 1,000 metros", 
      icon: Icons.pool, 
      iconColor: Colors.blue
      ),

    Activity(
      title:"Rutina de fuerza", 
      trailingText: "Meta: 50 kg", 
      icon: Icons.line_weight, 
      iconColor: Colors.greenAccent
      ),

    Activity(
      title:"Desayuno", 
      trailingText: "Comidas saludables",
      icon: Icons.food_bank, 
      iconColor: Colors.red
      ),
  ];

  @override
  //Flutter puede volver a llamar build() cuando necesita actualizar la interfaz
  Widget build(BuildContext context) {
    //build() devuelve un widget
    return Scaffold(
    //devuelve la estructura completa
    //Scaffold es un Widget y es la estructura básica de una pantalla de Material Design
    //Proporciona appBar y body
      appBar: AppBar(
        //configurando la barra superior de Home
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: Text("Panel de actividad física"),

        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(),
                ),);
            },
          ),
        ],
      ),
      body: 
        Padding(
          //aplicar padding a un widget en particular
          //ese widget es listview
          padding: EdgeInsets.all(16.0),
              child: ListView.builder(
              padding: EdgeInsets.all(8.0),
              //siempre proporcionar un itemCount o se asume que la lista es infinita
              itemCount : activityList.length,
              //Esta función dice qué Widget construir para cada elemento
              itemBuilder : (context, index){
                final currentActivity = activityList[index];
                //devuelve el widget correspondiente a una posición de la lista
                return InteractiveActivityCard(activity: currentActivity);
                //activity es el parametro de InteractiveActivityCard
              }
            )
        


          // child: Column(
          //   children:[
          //     Text("Resumen de hoy", style: TextStyle( fontSize: 22, fontWeight: FontWeight.bold,)),
              
          //     ActivityCard(
          //       title: "Pasos Diarios", 
          //       subtitle: "Meta: 10,000 pasos", 
          //       trailingText: "750", 
          //       icon: Icons.directions_walk, 
          //       iconColor: Colors.blueGrey,
          //       ),
          //     ActivityCard(
          //       title: "Rutina de Fuerza", 
          //       subtitle: "Tren superior / pesas", 
          //       trailingText: "Hecho", 
          //       icon: Icons.fitness_center, 
          //       iconColor: Colors.black,
          //       ),
          //       ActivityCard(
          //       title: "Natación", 
          //       subtitle: "Meta: 1,000 metros", 
          //       trailingText: "750", 
          //       icon: Icons.pool, 
          //       iconColor: Colors.blue,
          //       ),
          //       InteractiveActivityCard(title: "Pasos diarios", trailingText: "Meta: 10,000 pasos", icon: Icons.directions_walk, iconColor: Colors.blueGrey),
          //       InteractiveActivityCard(title: "Rutina de fuerza", trailingText: "Tren superior/pesas", icon: Icons.fitness_center, iconColor: Colors.black),
          //       InteractiveActivityCard(title: "Natación", trailingText: "Meta: 1,000 metros", icon: Icons.pool, iconColor: Colors.blue),
              
          //   ],
          // ),
        )
      ,
      
    );
  }
}

