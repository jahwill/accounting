class ProfileSettingsModel {
  final String iconaddress;
  final String title;
  final String subtitle;
  final Function ontap;

  ProfileSettingsModel({
    this.iconaddress,
    this.title,
    this.subtitle,
    this.ontap,
  }) : assert(iconaddress != null);
}

List<ProfileSettingsModel> profilelist = [
  ProfileSettingsModel(
    ontap: () {
      print('hi');
    },
    iconaddress: 'assets/icons/kyc_2.png',
    title: 'Complete KYC',
    subtitle: 'to access more features and higher limits',
  ),
  ProfileSettingsModel(
    ontap: () {
      print('hi2');
    },
    iconaddress: 'assets/icons/history.png',
    title: 'History',
    subtitle: 'view your recent activities',
  ),
  ProfileSettingsModel(
    ontap: () {
      print('hi3');
    },
    iconaddress: 'assets/icons/update.png',
    title: 'Update Profile',
    subtitle: 'update your organisation information',
  ),
  ProfileSettingsModel(
    ontap: () {
      print('hi4');
    },
    iconaddress: 'assets/icons/notification.png',
    title: 'Notifications',
    subtitle: 'change your notification settings',
  ),
  ProfileSettingsModel(
    ontap: () {
      print('hi5');
    },
    iconaddress: 'assets/icons/bank.png',
    title: 'Bank',
    subtitle: 'bank related settings)',
  ),
  ProfileSettingsModel(
    ontap: () {
      print('hi5');
    },
    iconaddress: 'assets/icons/crypto.png',
    title: 'Crypto',
    subtitle: 'crypto accounts related settings',
  ),
  ProfileSettingsModel(
    ontap: () {
      print('hi5');
    },
    iconaddress: 'assets/icons/security.png',
    title: 'Security',
    subtitle: 'secure your account',
  ),
  ProfileSettingsModel(
    ontap: () {
      print('hi5');
    },
    iconaddress: 'assets/icons/self_help.png',
    title: 'Self Help',
    subtitle: 'personally solve urgent issues',
  ),
  ProfileSettingsModel(
    ontap: () {
      print('hi5');
    },
    iconaddress: 'assets/icons/about-icon.png',
    title: 'About',
    subtitle: 'everything you need to know about this application',
  ),
  ProfileSettingsModel(
    ontap: () {
      print('hi5');
    },
    iconaddress: 'assets/icons/support.png',
    title: 'Support',
    subtitle: 'contact one of our agents',
  ),
  ProfileSettingsModel(
    ontap: () {
      print('hi5');
    },
    iconaddress: 'assets/icons/logout.png',
    title: 'Logout',
    subtitle: 'see you later',
  ),
];
