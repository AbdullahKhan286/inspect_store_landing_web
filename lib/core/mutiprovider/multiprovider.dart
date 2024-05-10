// ignore_for_file: depend_on_referenced_packages

import 'package:inspectstore_landing_web/view/landing_page/landing_page_model.dart';
import 'package:nested/nested.dart';
import 'package:provider/provider.dart';

//
/// MultiProvider is a provider that merges multiple providers into one.
///
List<SingleChildWidget> providers = [
  // view models for admin side
  ChangeNotifierProvider(create: (_) => LandingPageModel()),
];
