class ProfilePageModel {
  final String username;
  final profileimage;
  final useremail;
  final id;

  ProfilePageModel({this.username, this.profileimage, this.useremail, this.id});
}

List<ProfilePageModel> userDetail = [
  ProfilePageModel(
      username: 'Esquire Jah\'swill',
      useremail: 'meetjahwill@gmail.com',
      profileimage: 'assets/images/profile_pic.jpeg',
      id: '18373923')
];
