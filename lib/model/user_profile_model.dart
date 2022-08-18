class UserModel {
 late String  UserId, UserName, UserEmail, UserPic;
  UserModel(
      { required this.UserId,
       required this.UserName,
       required this.UserEmail,
       required this.UserPic});
  UserModel.FromJson(Map<dynamic,dynamic>map)
  {
    if(map==null)
      {return ;}
    UserId=map['userid'];
    UserName=map['username'];
    UserEmail=map['useremail'];
    UserPic=map['userpic'];



  }
  toJson()
  {
    return{  'userid':UserId,
      'username':UserName,
      'useremail':UserEmail,
      'userpic' : UserPic,

    };




  }
}
