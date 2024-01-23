import 'dart:convert';

UserData userDataFromJson(String str) => UserData.fromJson(json.decode(str));

String userDataToJson(UserData data) => json.encode(data.toJson());

// class User {
//     int? userId;
//     int? roleId;
//     String? username;
//     int? userableId;
//     String? userableName;
//     int? pnkId;
//     String? photoUrl;
//     String? accessToken;
//     String? refreshToken;

//     User({
//         this.userId,
//         this.roleId,
//         this.username,
//         this.userableId,
//         this.userableName,
//         this.pnkId,
//         this.photoUrl,
//         this.accessToken,
//         this.refreshToken,
//     });

//     factory User.fromJson(Map<String, dynamic> json) => User(
//         userId: json["user_id"],
//         roleId: json["role_id"],
//         username: json["username"],
//         userableId: json["userable_id"],
//         userableName: json["userable_name"],
//         pnkId: json["pnk_id"],
//         photoUrl: json["photo_url"],
//         accessToken: json["access_token"],
//         refreshToken: json["refresh_token"],
//     );

//     Map<String, dynamic> toJson() => {
//         "user_id": userId,
//         "role_id": roleId,
//         "username": username,
//         "userable_id": userableId,
//         "userable_name": userableName,
//         "pnk_id": pnkId,
//         "photo_url": photoUrl,
//         "access_token": accessToken,
//         "refresh_token": refreshToken,
//     };
// }

class UserData {
    String? email;
    String? uid;

    UserData({
        this.email,
        this.uid,
    });

    factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        email: json["email"],
        uid: json["uid"],
    );

    Map<String, dynamic> toJson() => {
        "email": email,
        "uid": uid,
    };
}