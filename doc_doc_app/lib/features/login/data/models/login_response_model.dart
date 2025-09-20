class LoginResponseModel {
  final String message;
  final bool status;

  LoginResponseModel({required this.message, required this.status});

  factory LoginResponseModel.fromjson(Map<String, dynamic> json) =>
      LoginResponseModel(message: json['message'], status: json['status']);
}
