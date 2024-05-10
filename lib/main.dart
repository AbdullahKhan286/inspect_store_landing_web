import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:inspectstore_landing_web/core/mutiprovider/multiprovider.dart';
import 'package:inspectstore_landing_web/utils/routes/routes.dart';
import 'package:inspectstore_landing_web/utils/routes/routes_name.dart';
import 'package:inspectstore_landing_web/view/landing_page/landing_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(1440, 864),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MultiProvider(
            providers: providers,
            child: GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Inspect Store',
              theme: ThemeData(
                primarySwatch: Colors.blue,
                textTheme:
                    Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
              ),
              initialRoute: RoutesName.splash,
              onGenerateRoute: Routes.generateRoute,
              home: const LandingPageScreen(),
            ),
          );
        });
  }
}
