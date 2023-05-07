// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_details_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ProjectDetailsStore on ProjectDetailsStoreBase, Store {
  late final _$projectsModelAtom =
      Atom(name: 'ProjectDetailsStoreBase.projectsModel', context: context);

  @override
  ProjectsModel? get projectsModel {
    _$projectsModelAtom.reportRead();
    return super.projectsModel;
  }

  @override
  set projectsModel(ProjectsModel? value) {
    _$projectsModelAtom.reportWrite(value, super.projectsModel, () {
      super.projectsModel = value;
    });
  }

  late final _$futureProjectAtom =
      Atom(name: 'ProjectDetailsStoreBase.futureProject', context: context);

  @override
  ObservableFuture<List<ProjectsModel>>? get futureProject {
    _$futureProjectAtom.reportRead();
    return super.futureProject;
  }

  @override
  set futureProject(ObservableFuture<List<ProjectsModel>>? value) {
    _$futureProjectAtom.reportWrite(value, super.futureProject, () {
      super.futureProject = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: 'ProjectDetailsStoreBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$initPageAsyncAction =
      AsyncAction('ProjectDetailsStoreBase.initPage', context: context);

  @override
  Future<void> initPage(dynamic id) {
    return _$initPageAsyncAction.run(() => super.initPage(id));
  }

  late final _$findAllIdAsyncAction =
      AsyncAction('ProjectDetailsStoreBase.findAllId', context: context);

  @override
  Future<dynamic> findAllId(dynamic id) {
    return _$findAllIdAsyncAction.run(() => super.findAllId(id));
  }

  @override
  String toString() {
    return '''
projectsModel: ${projectsModel},
futureProject: ${futureProject},
isLoading: ${isLoading}
    ''';
  }
}
