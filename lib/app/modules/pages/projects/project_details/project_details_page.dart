// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:eohdarksystem/app/modules/pages/projects/project_details/pages/project_details_desktop.dart';
import 'package:eohdarksystem/app/modules/pages/projects/project_details/pages/project_details_tablet.dart';
import 'package:flutter/material.dart';

import 'package:eohdarksystem/app/core/ui/helpers/responsive.dart';
import 'package:eohdarksystem/app/modules/pages/projects/project_details/pages/project_details_mobile.dart';

class ProjectDetailsPage extends StatelessWidget {
  final int projectId;

  const ProjectDetailsPage({
    Key? key,
    required this.projectId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        mobile: ProjectDetailsMobile(projectId: projectId),
        tablet: ProjectDetailsTablet(projectId: projectId),
        desktop: ProjectDetailsDesktop(projectId: projectId),
      ),
    );
  }
}
