import 'package:doc_doc_app/core/networking/api_constants.dart';
import 'package:doc_doc_app/core/networking/dio_factory.dart';
import 'package:doc_doc_app/features/login/data/models/login_response_model.dart';
import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class LoginProvider extends ChangeNotifier {
  final formkey = GlobalKey<FormState>();
  final emailCotroller = TextEditingController();
  final passwordCotroller = TextEditingController();
  bool isLoading = false;
  String? errorMessage;
  String? successMessage;
  void login(BuildContext context) async {
    if (formkey.currentState!.validate()) {
      isLoading = true;
      notifyListeners();
      try {
        final response = await DioFactory.postData(
          ApiConstants().login,
          data: {
            'email': emailCotroller.text,
            'password': passwordCotroller.text,
          },
        );
        final json = response.data;
        final data = LoginResponseModel.fromjson(json);
        showTopSnackBar(
          Overlay.of(context),
          CustomSnackBar.success(message: data.message),
          snackBarPosition: SnackBarPosition.top,
        );
      } catch (e) {
        showTopSnackBar(
          Overlay.of(context),
          CustomSnackBar.error(
            message: 'Wrong email or password please check and try again',
          ),
          snackBarPosition: SnackBarPosition.top,
        );
      }

      isLoading = false;
      notifyListeners();
    }
  }
}
