import 'package:filledstacks_academy/app/app.bottomsheets.dart';
import 'package:filledstacks_academy/app/app.dialogs.dart';
import 'package:filledstacks_academy/app/app.locator.dart';
import 'package:filledstacks_academy/ui/common/app_strings.dart';
import 'package:filledstacks_academy/ui/views/home/home_view.form.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends FormViewModel {
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();

  String get counterLabel => 'Counter is: $_counter';

  int _counter = 0;

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }

  void captureEmail() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Thanks for Signing Up',
      // #2: Use emailValue like a normal property
      description: 'Check in $emailValue for a verification email',
    );
  }

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: 'Give stacked $_counter stars on Github',
    );
  }

  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }
}
