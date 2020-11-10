import 'package:flutter/material.dart';

import 'problem_data.dart';
import 'problem_view.dart';
import 'problems_reader.dart';

class ProblemList extends StatefulWidget {
  @override
  _ProblemListState createState() => _ProblemListState();
}

class _ProblemListState extends State<ProblemList> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: fetchProblems,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var data = snapshot.data as List<ProblemData>;
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) => ProblemView(data[index]),
            );
          } else {
            return Text("Loading");
          }
        });
  }
}
