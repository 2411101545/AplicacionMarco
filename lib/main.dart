// main.dart
import 'package:flutter/material.dart';
import 'package:stateless_app/src/card.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Remove the debug banner
        debugShowCheckedModeBanner: false,
        title: 'UI Datos del estudiante',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: const HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // Animation controller
  late AnimationController _animationController;

  // This is used to animate the icon of the main FAB
  late Animation<double> _buttonAnimatedIcon;

  // This is used for the child FABs
  late Animation<double> _translateButton;

  // This variable determnies whether the child FABs are visible or not
  bool _isExpanded = false;

  @override
  initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600))
      ..addListener(() {
        setState(() {});
      });

    _buttonAnimatedIcon =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);

    _translateButton = Tween<double>(
      begin: 100,
      end: -20,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
    super.initState();
  }

  // dispose the animation controller
  @override
  dispose() {
    _animationController.dispose();
    super.dispose();
  }

  // This function is used to expand/collapse the children floating buttons
  // It will be called when the primary FAB (with menu icon) is pressed
  _toggle() {
    if (_isExpanded) {
      _animationController.reverse();
    } else {
      _animationController.forward();
    }

    _isExpanded = !_isExpanded;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: FlexibleSpaceBar(
          title: Text('Datos estudiantiles UTXJ',
          style: TextStyle(fontFamily: 'OpenSans'),
          ),
          centerTitle: true,
          background: Image.asset('assets/images/app2.jpg', fit: BoxFit.fitWidth,),
        ),
      ),
         body: SingleChildScrollView(
          child: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MyCard(
                    image: Image.asset('assets/images/foto.png',
                    width: 100,
                    height: 120,
                    
                    ) ,
                    nombre: const Text("Nombre: Brenda Paola Flores Carcaño",
                        style: TextStyle(color: Colors.black, fontSize: 15.0)),
                    genero: const Text("Genero: Femenino",
                        style: TextStyle(color: Colors.black, fontSize: 15.0)),
                    edad: const Text("Edad: 22años",
                        style: TextStyle(color: Colors.black, fontSize: 15.0)),
                    correo: const Text(
                        "Email: brendapaola.florescarcano@utxicotepec.edu.mx",
                        style: TextStyle(color: Colors.black, fontSize: 15.0)),
                    matricula: const Text(
                        "Matricula: 190032",
                        style: TextStyle(color: Colors.black, fontSize: 15.0)),
                  ),
                ],
              ),
              MyCard(
                image: const Text(''),
                nombre: const Text(
                    "Area: Tecnologías de la Información y Comunicación",
                    style: TextStyle(color: Colors.black, fontSize: 15.0)),
                genero: const Text("Carrera: Ingeniería en Desarrollo y Gestión de Software",
                    style: TextStyle(color: Colors.black, fontSize: 15.0)),
                edad: const Text("Cuatrimestre:10",
                    style: TextStyle(color: Colors.black, fontSize: 15.0)),
                correo: const Text("Grupo: B ",
                    style: TextStyle(color: Colors.black, fontSize: 15.0)),
                    matricula: const Text(
                        "Modalidad: Sabatino",
                        style: TextStyle(color: Colors.black, fontSize: 15.0)),
              ),
              DataTable(
                sortColumnIndex: 1,
                sortAscending: false,
                columns: [
                  DataColumn(label: Text("Materia")),
                   DataColumn(label: Text("Día")),
                  DataColumn(label: Text("Hora"), numeric: true),
                ],
                rows: [
                  DataRow(
                    selected: true,
                    cells: [
                    DataCell(Text("Integradora")),
                    DataCell(Text("Viernes")),
                    DataCell(Text("16:30-17:30"))
                  ]),
                  DataRow(cells: [
                    DataCell(Text("Negociación Empresarial")),
                    DataCell(Text("Viernes")),
                    DataCell(Text("17:30-18:30"))
                  ]),
                   DataRow(cells: [
                    DataCell(Text("Desarrollo Móvil Integral")),
                    DataCell(Text("Viernes")),
                    DataCell(Text("18:30-20:30"))
                  ]),
                   DataRow(cells: [
                    DataCell(Text("Gest. del Proceso de Des. de Sw")),
                    DataCell(Text("Sabado")),
                    DataCell(Text("7:00-9:00"))
                  ]),
                   DataRow(cells: [
                    DataCell(Text("Aplicaciones Web Progresivas")),
                    DataCell(Text("Sabado")),
                    DataCell(Text("9:00-11:00"))
                  ]),
                   DataRow(cells: [
                    DataCell(Text("Tutoría")),
                    DataCell(Text("Sabado")),
                    DataCell(Text("11:00-12:00"))
                  ]),
                   DataRow(cells: [
                    DataCell(Text("RECESO")),
                    DataCell(Text("Sabado")),
                    DataCell(Text("12:00-12:30"))
                  ]),
                   DataRow(cells: [
                    DataCell(Text("Optativa")),
                    DataCell(Text("Sabado")),
                    DataCell(Text("12:30-2:30"))
                  ]),
                   DataRow(cells: [
                    DataCell(Text("Ingles")),
                    DataCell(Text("Sabado")),
                    DataCell(Text("2:30-4:30"))
                  ]),
                   DataRow(cells: [
                    DataCell(Text("")),
                    DataCell(Text("")),
                    DataCell(Text(""))
                  ]),
                   DataRow(cells: [
                    DataCell(Text("")),
                    DataCell(Text("")),
                    DataCell(Text(""))
                  ])
                ],
              )
            ]),
            
      )),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Transform(
            transform: Matrix4.translationValues(
              0.0,
              _translateButton.value * 4,
              0.0,
            ),
            child: FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 8, 82, 143),
              onPressed: () {/* Do something */},
              child: const Icon(
                Icons.person,
              ),
            ),
          ),
          Transform(
            transform: Matrix4.translationValues(
              0,
              _translateButton.value * 3,
              0,
            ),
            child: FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 64, 75, 95),
              onPressed: () {/* Do something */},
              child: const Icon(
                Icons.summarize,
              ),
            ),
          ),
          Transform(
            transform: Matrix4.translationValues(
              0,
              _translateButton.value * 2,
              0,
            ),
            child: FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 13, 135, 162),
              onPressed: () {/* Do something */},
              child: const Icon(Icons.watch_later),
            ),
          ),
          // This is the primary FAB
          FloatingActionButton(
            onPressed: _toggle,
            child: AnimatedIcon(
              icon: AnimatedIcons.menu_close,
              progress: _buttonAnimatedIcon,
            ),
          ),
        ],
      ),
    );
  }
}