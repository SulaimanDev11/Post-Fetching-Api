class AgentModel {
  String agentId;
  String name;
  DateTime age;
  String gender;
  String phoneNo;
  String address;
  String description;
  String position;
  String email;
  bool isActive;
  DateTime createdDate;
  String createdBy;
  DateTime modifyDate;
  String modifyBy;
  dynamic categoryTypeId;
  String userId;
  String username;
  String password;
  String imageName;
  int totalproperty;

  AgentModel({
    required this.agentId,
    required this.totalproperty,
    required this.address,
    required this.age,
    required this.createdDate,
    required this.description,
    required this.email,
    required this.imageName,
    required this.name,
    required this.password,
    required this.phoneNo,
    required this.position,
    required this.username,
    required this.categoryTypeId,
    required this.createdBy,
    required this.gender,
    required this.isActive,
    required this.modifyBy,
    required this.modifyDate,
    required this.userId,
  });

  // factory AgentModel.fromJson(Map<String, dynamic> agentJson) => AgentModel(
  //       agentId: agentJson['agentId'],
  //       totalproperty: agentJson['totalproperty'],
  //       address: agentJson['address'],
  //       age: agentJson['age'],
  //       createdDate: agentJson['createdDate'],
  //       description: agentJson['description'],
  //       email: agentJson['email'],
  //       imageName: agentJson['imageName'],
  //       name: agentJson['name'],
  //       password: agentJson['password'],
  //       phoneNo: agentJson['phoneNo'],
  //       position: agentJson['position'],
  //       username: agentJson['username'],
  //       categoryTypeId: agentJson['categoryTypeId'],
  //       gender: agentJson['gender'],
  //       createdBy: agentJson['createdBy'],
  //       modifyBy: agentJson['modifyBy'],
  //       modifyDate: agentJson['modifyDate'],
  //       userId: agentJson['userId'],
  //       isActive: agentJson['isActive'],
  //     );
  factory AgentModel.fromJson(var agentJson) => AgentModel(
        agentId: agentJson['agentId'],
        totalproperty: agentJson['totalproperty'],
        address: agentJson['address'],
        age: agentJson['age'],
        createdDate: agentJson['createdDate'],
        description: agentJson['description'],
        email: agentJson['email'],
        imageName: agentJson['imageName'],
        name: agentJson['name'],
        password: agentJson['password'],
        phoneNo: agentJson['phoneNo'],
        position: agentJson['position'],
        username: agentJson['username'],
        categoryTypeId: agentJson['categoryTypeId'],
        gender: agentJson['gender'],
        createdBy: agentJson['createdBy'],
        modifyBy: agentJson['modifyBy'],
        modifyDate: agentJson['modifyDate'],
        userId: agentJson['userId'],
        isActive: agentJson['isActive'],
      );
}
