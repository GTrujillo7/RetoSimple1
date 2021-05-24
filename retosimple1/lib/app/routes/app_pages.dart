import 'package:get/get.dart';
import '../ui/pages/home_page/home_page.dart';
part 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
        name: Routes.INITIAL,
        page: () => HomePage(),
        transition: Transition.fade),
  ];
}
