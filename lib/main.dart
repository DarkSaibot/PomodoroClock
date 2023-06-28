import 'package:flutter/material.dart';
import 'package:pomodoro/pages/pomodoro.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<PomodoroStore>(
          create: (_) => PomodoroStore(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Contador',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Pomodoro(),
      ),
    );
  }
}

// final store = ContadorStore();

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Contador'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'Você apertou o botão esse número de vezes:',
//             ),
//             Observer(
//               builder: (_) => Text(
//                 '${store.contador}',
//                 style: Theme.of(context).textTheme.headlineMedium,
//               ),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: store.incrementar,
//         tooltip: 'Incrementar',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
