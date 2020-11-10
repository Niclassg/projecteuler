class ProblemData {
  final int id;
  final String description;
  final String published;
  final String updated;
  final String solvedBy;

  ProblemData(
      {this.id, this.description, this.published, this.updated, this.solvedBy});

  factory ProblemData.fromString(String string) {
    var properties = string.split("##");
    if (properties.length != 5) return ProblemData();

    return ProblemData(
      id: int.parse(properties[0]),
      description: properties[1],
      published: properties[2],
      updated: properties[3],
      solvedBy: properties[4],
    );
  }
}
