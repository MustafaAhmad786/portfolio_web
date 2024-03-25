import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portofilo/Models/project.dart';
import 'package:portofilo/constraints.dart';
import 'package:portofilo/responsive.dart';

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
        SizedBox(height: defaultpadding / 6),
        Responsive(
          mobile: ProjectGridView(
            crossAxisCount: 1,
            childaspectratio: 1.7,
          ),
          mobilelarge: ProjectGridView(
            crossAxisCount: 2,
            childaspectratio: 1,
          ),
          tablet: ProjectGridView(
            childaspectratio: 0.9,
          ),
          desktop: ProjectGridView(),
        )
      ],
    );
  }
}

class ProjectGridView extends StatelessWidget {
  const ProjectGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childaspectratio = 1.3,
  }) : super(key: key);
  final int crossAxisCount;
  final double childaspectratio;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: childaspectratio,
          mainAxisSpacing: 7,
          crossAxisSpacing: defaultpadding / 2.3),
      itemCount: demo_projects.length,
      itemBuilder: (BuildContext context, int index) {
        return ProjectCard(
          project: demo_projects[index],
        );
      },
    );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultpadding),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            padding: EdgeInsets.all(defaultpadding),
            decoration: BoxDecoration(
              color:
                  Colors.white.withOpacity(0.100), // Adjust opacity as needed
            ),
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
                Text(
                  demo_projects[0].description!,
                  maxLines: Responsive.isMobilelarge(context) ? 3 : 4,
                  overflow: TextOverflow.ellipsis,
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Read All',
                    style: TextStyle(color: Colors.yellow),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
