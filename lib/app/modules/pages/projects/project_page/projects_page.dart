import 'package:eohdarksystem/app/core/ui/helpers/responsive.dart';
import 'package:eohdarksystem/app/modules/pages/projects/project_page/pages/project_desktop.dart';
import 'package:eohdarksystem/app/modules/pages/projects/project_page/pages/project_mobile.dart';
import 'package:eohdarksystem/app/modules/pages/projects/project_page/pages/project_tablet.dart';
import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Responsive(
        mobile: ProjectMobile(),
        tablet: ProjectTablet(),
        desktop: ProjectDesktop(),
      ),
    );
  }
}
