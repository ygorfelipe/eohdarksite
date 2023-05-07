// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projects_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ProjectsStore on ProjectsStoreBase, Store {
  late final _$futureProjectAtom =
      Atom(name: 'ProjectsStoreBase.futureProject', context: context);

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
      Atom(name: 'ProjectsStoreBase.isLoading', context: context);

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
      AsyncAction('ProjectsStoreBase.initPage', context: context);

  @override
  Future<void> initPage() {
    return _$initPageAsyncAction.run(() => super.initPage());
  }

  late final _$findAllAsyncAction =
      AsyncAction('ProjectsStoreBase.findAll', context: context);

  @override
  Future<void> findAll() {
    return _$findAllAsyncAction.run(() => super.findAll());
  }

  @override
  String toString() {
    return '''
futureProject: ${futureProject},
isLoading: ${isLoading}
    ''';
  }
}
