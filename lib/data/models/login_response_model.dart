
class LoginResponse {
  List<UserData>? data;
  String? message;
  String? status;

  LoginResponse({this.data, this.message, this.status});

  LoginResponse.fromJson(Map<dynamic, dynamic> json) {
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data!.add(UserData.fromJson(v));
      });
    }
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = message;
    data['status'] = status;
    return data;
  }
}

class UserData {
  String? id;
  String? loginJWtToken;
  String? loginTimeStr;
  int? personId;
  String? userName;
  List<UserApplicationList> userApplicatioinList = [];
  PersonDto? personDto;

  UserData(
      {this.id,
        this.loginJWtToken,
        this.loginTimeStr,
        this.personId,
        this.userName,
        required this.userApplicatioinList,
        this.personDto});

  UserData.fromJson(Map<String, dynamic> json) {

    id = json['id'];
    loginJWtToken = json['loginJwtToken'];
    loginTimeStr = json['loginTimeStr'];
    personId = json['personId'];
    userName = json['userName'];
    if (json['userApplicatioinList'] != null) {
      userApplicatioinList = [];
      json['userApplicatioinList'].forEach((v) {
        userApplicatioinList.add( UserApplicationList.fromJson(v));
      });
    }
    personDto = json['personDto'] != null
        ? PersonDto.fromJson(json['personDto'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['loginJWtToken'] = loginJWtToken;
    data['loginTimeStr'] = loginTimeStr;
    data['personId'] = personId;
    data['userName'] = userName;
    data['userApplicatioinList'] =
        userApplicatioinList.map((v) => v.toJson()).toList();
    if (personDto != null) {
      data['personDto'] = personDto!.toJson();
    }
    return data;
  }
}

class UserApplicationList {
  String createdDate;
  String updatedDate;
  String createdBy;
  String updatedBy;
  String status;
  String applicationId;
  String id;
  RoleDto roleDto;
  String roleId;
  String userId;

  UserApplicationList({
    required this.createdDate,
    required this.updatedDate,
    required this.createdBy,
    required this.updatedBy,
    required this.status,
    required this.applicationId,
    required this.id,
    required this.roleDto,
    required this.roleId,
    required this.userId,
  });

  factory UserApplicationList.fromJson(Map<String, dynamic> json) {



    // print('This is user roleDtoJson ${json['roleDto']}');
    return UserApplicationList(
      createdDate: json['createdDate'].toString(),
      updatedDate: json['updatedDate'].toString(),
      createdBy: json['createdBy'].toString(),
      updatedBy: json['updatedBy'].toString(),
      status: json['status'].toString(),
      applicationId: json['applicationId'].toString(),
      id: json['id'].toString(),

      roleDto:   RoleDto.fromJson(json['roleDto']),
      roleId: json['roleId'].toString(),
      userId: json['userId'].toString(),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['createdDate'] = createdDate;
    data['updatedDate'] = updatedDate;
    data['createdBy'] = createdBy;
    data['updatedBy'] = updatedBy;
    data['status'] = status;
    data['applicationId'] = applicationId;
    data['id'] = id;
    data['roleDto'] = roleDto.toJson();
    data['roleId'] = roleId;
    data['userId'] = userId;
    return data;
  }
}

class RoleDto {
  String status;
  String applicationId;
  String description;
  String id;
  String name;
  List<RoleFunctionDtoList> roleFunctionDtoLists;

  RoleDto({
    required this.status,
    required this.applicationId,
    required this.description,
    required this.id,
    required this.name,
    required this.roleFunctionDtoLists,
  });

  factory RoleDto.fromJson(Map<String, dynamic> json) {
    final roleFunctionDtoListJson = json['roleFunctionDtoList'] as List<dynamic>;
    final roleFunctionDtoLists = roleFunctionDtoListJson
        .map((roleFunctionDtoJson) => RoleFunctionDtoList.fromJson(roleFunctionDtoJson))
        .toList();

    return RoleDto(
      status: json['status'].toString(),
      applicationId: json['applicationId'].toString(),
      description: json['description'].toString(),
      id: json['id'].toString(),
      name: json['name'].toString(),
      roleFunctionDtoLists: roleFunctionDtoLists,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['applicationId'] = applicationId;
    data['description'] = description;
    data['id'] = id;
    data['name'] = name;
    data['roleFunctionDtoList'] = roleFunctionDtoLists.map((e) => e.toJson()).toList();
    return data;
  }
}

class RoleFunctionDtoList {
  String status;
  String id;
  String roleId;
  int functionId;
  FunctionDto? functionDto;

  RoleFunctionDtoList({
    required this.status,
    required this.id,
    required this.roleId,
    required this.functionId,
    required this.functionDto,
  });

  RoleFunctionDtoList.fromJson(Map<String, dynamic> json)
      : status = json['status'].toString(),
        id = json['id'].toString(),
        roleId = json['roleId'].toString(),
        functionId = json['functionId'],
        functionDto = json['functionDto'] != null
            ? FunctionDto.fromJson(json['functionDto'])
            : null;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['id'] = id;
    data['roleId'] = roleId;
    data['functionId'] = functionId;
    if (functionDto != null) {
      data['functionDto'] = functionDto!.toJson();
    }
    return data;
  }
}

class FunctionDto {
  String? status;
  String? description;
  String? id;
  String? name;

  FunctionDto({this.status, this.description, this.id, this.name});

  FunctionDto.fromJson(Map<String, dynamic> json)
      : status = json['status'].toString(),
        description = json['description'].toString(),
        id = json['id'].toString(),
        name = json['name'].toString();

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['description'] = description;
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}

class PersonDto {
  int? applicationId;
  int? companyId;
  String? companyName;
  int? businessUnitId;
  String? businessUnitName;
  int? businessUnitTypeId;
  String? businessUnitTypeName;
  String? nationalId;
  int? designationId;
  String? designationName;
  int? districtId;
  String? districtName;
  String? email;
  String? lineManagerEmail;
  int? lineManagerId;
  String? phoneNumber;
  String? name;
  String? profilePhotoUrl;
  int? tehsilId;
  String? employeeNo;
  bool? hasReprtees;
  int? employCategoryId;

  PersonDto({
    this.applicationId,
    this.companyId,
    this.companyName,
    this.businessUnitId,
    this.businessUnitName,
    this.businessUnitTypeId,
    this.businessUnitTypeName,
    this.nationalId,
    this.designationId,
    this.designationName,
    this.districtId,
    this.districtName,
    this.email,
    this.lineManagerEmail,
    this.lineManagerId,
    this.phoneNumber,
    this.name,
    this.profilePhotoUrl,
    this.tehsilId,
    this.employeeNo,
    this.hasReprtees,
    this.employCategoryId,
  });

  PersonDto.fromJson(Map<String, dynamic> json) {

    applicationId = json['applicationId'] ?? 00;
    companyId = json['companyId'] ?? 00;
    companyName = json['companyName'].toString() != 'null' || json['companyName'] != null ? json['companyName'].toString():'';
    businessUnitId = json['businessUnitId'] ?? 00;
    businessUnitName = json['businessUnitName'].toString() != 'null' || json['businessUnitName'] != null ? json['businessUnitName'] : '' ;
    businessUnitTypeId = json['businessUnitTypeId'] ?? 00;
    businessUnitTypeName = json['businessUnitTypeName'] != null ? json['businessUnitTypeName'].toString() : '';
    nationalId = json['nationalId'] != null ? json['nationalId'].toString() : '';
    designationId =  json['designationId'] ?? 00;
    designationName = json['designationName'].toString() != 'null' || json['designationName'] != null ? json['designationName'] : '';
    districtId = json['districtId'] ?? 00;
    districtName = json['districtName'] != null ? json['districtName'].toString(): '';
    email = json['email'] != null || json['email'].toString() != 'null' ? json['email'] : '';
    lineManagerEmail = json['lineManagerEmail'] != null ? json['lineManagerEmail'].toString() : '';
    lineManagerId = json['lineManagerId'] ?? 00;
    phoneNumber = json['phoneNumber'].toString() != 'null' || json['phoneNumber']!= null ? json['phoneNumber'] : '';
    name = json['name'].toString();
    profilePhotoUrl = json['profilePhotoUrl'];
    tehsilId = json['tehsilId'] ?? 00;
    employeeNo = json['employeeNo'] != null ? json['employeeNo'].toString() : '';
    hasReprtees = json['hasReprtees'];
    employCategoryId = json['employCategoryId'] ?? 00;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['applicationId'] = applicationId;
    data['companyId'] = companyId;
    data['companyName'] = companyName;
    data['businessUnitId'] = businessUnitId;
    data['businessUnitName'] = businessUnitName;
    data['businessUnitTypeId'] = businessUnitTypeId;
    data['businessUnitTypeName'] = businessUnitTypeName;
    data['nationalId'] = nationalId;
    data['designationId'] = designationId;
    data['designationName'] = designationName;
    data['districtId'] = districtId;
    data['districtName'] = districtName;
    data['email'] = email;
    data['lineManagerEmail'] = lineManagerEmail;
    data['lineManagerId'] = lineManagerId;
    data['phoneNumber'] = phoneNumber;
    data['name'] = name;
    data['profilePhotoUrl'] = profilePhotoUrl;
    data['tehsilId'] = tehsilId;
    data['employeeNo'] = employeeNo;
    data['hasReprtees'] = hasReprtees;
    data['employCategoryId'] = employCategoryId;

    return data;
  }
}
