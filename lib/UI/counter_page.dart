import 'package:bloc_counter/bloc/bloc_counter_bloc.dart';
import 'package:bloc_counter/bloc/bloc_counter_event.dart';
import 'package:bloc_counter/bloc/bloc_counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Bloc-Count',
            // style: TextStyle(color: Colors.white)
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
         // ,
        children: [
          BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state){
                return Center(
                    child: Text(state.counter.toString(),
                      style: TextStyle(
                          fontSize: 100,
                          color: Colors.deepPurple
                      ),
                    )
                );
              }
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                context.read<CounterBloc>().add(IncrementCounter());
              }, child: Text('+1')),
              SizedBox(width: 20),
              ElevatedButton(onPressed: (){
                context.read<CounterBloc>().add(DecrementCounter());
              }, child: Text('-1')),
              SizedBox(width: 20),
              ElevatedButton(onPressed: (){
                context.read<CounterBloc>().add(ResetCounter());
              }, child: Text('Reset')),
            ],
          ),
        ],
      ),
    );
  }
}
