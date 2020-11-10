import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'problem_data.dart';

class ProblemView extends StatelessWidget {
  final ProblemData problem;
  ProblemView(this.problem);

  @override
  Widget build(BuildContext context) {
    print("building widget ${problem.id}");
    return ListTile(
      title: Text("${problem.id}"),
      subtitle: Text("${problem.description}"),
      trailing: FlatButton.icon(
          icon: Icon(Icons.arrow_forward),
          label: Text("Go"),
          onPressed: () async {
            await launch(
                Uri.encodeFull(
                    "https://projecteuler.net/problem=${problem.id}"),
                forceWebView: true);
          }),
      contentPadding: EdgeInsets.only(bottom: 5),
    );
  }
}
