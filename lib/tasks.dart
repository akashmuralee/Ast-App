class Tasks {
  final String name;
  final String description;
  final String assignTo;
  final String deadline;
  bool done;

  Tasks(this.name, this.description, this.assignTo, this.deadline, this.done);
}

List<Tasks> tasks = [
    Tasks(
        "Flutter",
        "Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam vitae justo eu risus sodales dignissim.",
        "Akhil",
        "22-02-2021",
        false),
    Tasks(
        "Django",
        "Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam vitae justo eu risus sodales dignissim.",
        "Akhil",
        "03-03-2021",
        true),
    Tasks(
        "Java",
        "Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam vitae justo eu risus sodales dignissim.",
        "Akhil",
        "02-01-2021",
        true),
    Tasks(
        "Web Dev",
        "Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam vitae justo eu risus sodales dignissim.",
        "Akhil",
        "22-02-2021",
        false),
  ];
