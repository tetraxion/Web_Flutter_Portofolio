class Project {
  final String? title, description, link;

  Project({this.title, this.description, this.link});
}

// ignore: non_constant_identifier_names
List<Project> demo_projects = [
  Project(
    title: "Flutter Portofolio Website",
    link: "",
    description:
        "- Responsive\n- Launch URL\n- Clean Code and a lot of more...",
  ),
  Project(
    title: "",
    link: "",
    description:
        "- Login with google\n- Login with google\n- After Login, show details ( profile picture, name, email ) and a lot of more...",
  ),
  Project(
    title: "",
    link: "",
    description:
        "- Responsive Apps\n- Buy Product\n- Add Product to Shopping cart\n- Search Delegate and a lot of more...",
  ),
];
