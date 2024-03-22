
import 'package:flutter/material.dart';
import 'package:portofilo/Models/project.dart';
import 'package:portofilo/constraints.dart';

class MyProject extends StatelessWidget {
  const MyProject({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text("My Project",
              style: Theme.of(context).textTheme.titleLarge!),
        ),
        SizedBox(height: defaultpadding),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1.7,
              mainAxisSpacing: 7,
              crossAxisSpacing: defaultpadding / 3.5),
          itemCount: demo_projects.length,
          itemBuilder: (BuildContext context, int index) {
            return ProjectCard(
              project: demo_projects[index],
            );
          },
        ),
      ],
    );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.project,
  });
  final Project project;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.red.withOpacity(0.5),
            blurRadius: 5,
            offset: Offset(0, 0),
          ),
          BoxShadow(
            color: Colors.green.withOpacity(0.5),
            blurRadius: 5,
            offset: Offset(0, 6),
          ),
          BoxShadow(
            color: Colors.blue.withOpacity(0.5),
            blurRadius: 5,
            offset: Offset(0, 1),
          ),
        ], color: secondarycolor, borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.all(defaultpadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              demo_projects[0].title!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Spacer(),
            Text(demo_projects[0].description!),
            Spacer(),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Read All',
                  style: TextStyle(color: Colors.yellow),
                ))
          ],
        ),
      ),
    );
  }
}
