import 'package:base_app/data/base/base_vm.dart';
import 'package:base_app/presentation/utilities/loading.dart';
import 'package:flutter/cupertino.dart';

import '../../../data/repositiries/login_repo/login_repo.dart';
import '../../common_widgets/intimation_dialogs.dart';

class LoginInVm extends BaseVm {
  final LoginRepo loginRepo;

  LoginInVm({required this.loginRepo});

  final TextEditingController _userNameController = TextEditingController();

  TextEditingController get userNameController => _userNameController;

  Future login(context) async {
    LoadingUtils(context).startLoading();
    var eitherResult = await loginRepo.loginUser(
        userName: _userNameController.text,
        password: '1234',
        applicationId: '310');
    LoadingUtils(context).stopLoading();
    eitherResult.fold(
        (left) => IntimationDialogs.showErrorSnackBar(left),
        (r) => IntimationDialogs.showSuccessSnackBar(
            'You are logged in successfully'));
  }
}
