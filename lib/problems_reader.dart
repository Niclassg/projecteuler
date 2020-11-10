import 'package:http/http.dart' as http;
import 'problem_data.dart';

Future<List<ProblemData>> get fetchProblems async {
  print("starting to get");

  final response = await http.get("https://projecteuler.net/minimal=problems",
      headers: {"Access-Control-Allow-Origin": "*"});
  print(response);
  print("finished get");
  List<ProblemData> problemDataList = List<ProblemData>();
  if (response.statusCode == 200) {
    var lines = response.body.split('\n');
    for (var line in lines.skip(1)) {
      problemDataList.add(ProblemData.fromString(line));
    }
    return problemDataList;
  } else {
    throw Exception("Failed to fetch problems");
  }
}
