import 'package:flutter/material.dart';

import '../../deffault.dart';

class ServicesModel {
  final String iconaddress;
  final String title;
  final String subtitle;
  final Function ontap;

  ServicesModel({
    this.iconaddress,
    this.title,
    this.subtitle,
    this.ontap,
  }) : assert(iconaddress != null);
}

List<ServicesModel> services = [
  ServicesModel(
    ontap: () {
      print('hi');
    },
    iconaddress: 'assets/icons/schedule.png',
    title: 'Scheduling',
    subtitle: 'clients appointment scheduling',
  ),
  ServicesModel(
    ontap: () {
      print('hi2');
    },
    iconaddress: 'assets/icons/billing.png',
    title: 'Autobilling',
    subtitle: 'efficient billing system',
  ),
  ServicesModel(
    ontap: () {
      print('hi3');
    },
    iconaddress: 'assets/icons/report.png',
    title: 'Report',
    subtitle: 'comprehensive reporting system',
  ),
  ServicesModel(
    ontap: () {
      print('hi4');
    },
    iconaddress: 'assets/icons/document.png',
    title: 'Documents',
    subtitle: 'storage and sharing of documents',
  ),
  ServicesModel(
    ontap: () {
      print('hi5');
    },
    iconaddress: 'assets/icons/client.png',
    title: 'Clients',
    subtitle: 'data base of all clients)',
  ),
  ServicesModel(
    ontap: () {
      print('hi5');
    },
    iconaddress: 'assets/icons/register.png',
    title: 'EasyReg',
    subtitle: 'client pre-registration made easy',
  ),
  ServicesModel(
    ontap: () {
      print('hi5');
    },
    iconaddress: 'assets/icons/consent.png',
    title: 'Consent',
    subtitle: 'reject or grant a consent to a request',
  ),
  ServicesModel(
    ontap: () {
      print('hi5');
    },
    iconaddress: 'assets/icons/communicate.png',
    title: 'Converse',
    subtitle: 'communicate with your patients',
  ),
  ServicesModel(
    ontap: () {
      print('hi5');
    },
    iconaddress: 'assets/icons/deposit.png',
    title: 'Deposit',
    subtitle: 'Fund Your purse through various means',
  ),
  ServicesModel(
    ontap: () {
      print('hi5');
    },
    iconaddress: 'assets/icons/withdraw.png',
    title: 'Withdrawal',
    subtitle: 'withdraw money to your bank account & various crypto wallets',
  ),
  ServicesModel(
    ontap: () {
      print('hi5');
    },
    iconaddress: 'assets/icons/naira.png',
    title: 'Send Money',
    subtitle: 'send money to local bank accounts',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/send_money_1.png',
    title: 'INTL\' Payments',
    subtitle: 'send money to foreign bank accounts',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/crypto.png',
    title: 'Crypto  Payments',
    subtitle: 'make transfers to other crypto wallets',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/market.png',
    title: 'MarketPlace',
    subtitle: 'purchase all your need in one market',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/advertise.png',
    title: 'Advertise',
    subtitle: 'help people know more about your services',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/labour.png',
    title: 'Labour',
    subtitle: 'employ workers',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/grant.png',
    title: 'Request Grant',
    subtitle: 'access a grant to support your business',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/loan2.png',
    title: 'Request Loan',
    subtitle: 'get a loan based on your terms and condition',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/equity_invest.png',
    title: 'Equity Investment',
    subtitle: 'raise capital for your business by selling shares',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/truss_black.png',
    title: 'Request a Truss',
    subtitle: 'raise capital through the truss model',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/truss_black.png',
    title: 'Grant a Truss',
    subtitle: 'solidify the ecosystem by granting a truss',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/truss_black.png',
    title: 'Manage my Truss',
    subtitle: 'declare profit & loss for your Insurance',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/shares2.png',
    title: 'Buy Shares',
    subtitle: 'buy shares of various businesses',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/stock.png',
    title: 'Buy Stock',
    subtitle: 'Invest in stock market',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/donate.png',
    title: 'Donate',
    subtitle: 'support those in need',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/product_edit.png',
    title: 'Invoice Discounting',
    subtitle: 'most reliable invoice finance facility',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/heavyduty.png',
    title: 'Instrument',
    subtitle: 'Financial Instruments you can trust',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/esusu.png',
    title: 'Personal Esusu',
    subtitle: 'best way to earn while saving',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/crowdfunding.png',
    title: 'Community Esusu',
    subtitle: 'participate in group donations',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/team_icon.png',
    title: 'Cooperate Membership',
    subtitle: 'become a corporate member of a co-operative',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/pay.png',
    title: 'Cooperative Membership Dues',
    subtitle: 'pay corporate membership dues',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/ngos.png',
    title: 'NGO Membership',
    subtitle: 'Become a cooperate member of an NGO',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/paynog.png',
    title: 'NGO Membership Dues',
    subtitle: 'Pay corporate membership dues',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/mobile.png',
    title: 'Purchase Airtime',
    subtitle: 'buy airtime directly from your purse',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/client.png',
    title: 'Power',
    subtitle: 'Pay electricity bills',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/gas.png',
    title: 'Gas',
    subtitle: 'buy cooking gas',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/petrol.png',
    title: 'Petrol',
    subtitle: 'buy gasoline',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/flight.png',
    title: 'Flights',
    subtitle: 'book official flights',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/insure.png',
    title: 'Insurance',
    subtitle: 'any insurance service you need',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/car.png',
    title: 'Acemove',
    subtitle: 'transportation service',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/tax.png',
    title: 'GOVT',
    subtitle: 'pay taxes and access government services',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/education.png',
    title: 'Education',
    subtitle: 'access a specific education that suite your organization',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/train_4.png',
    title: 'Training',
    subtitle: 'access a specific training that suite your organization',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/article.png',
    title: 'Articles on Legal Practitioners',
    subtitle: 'articles on legal practices',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/forum.png',
    title: 'Legal Practitioners Forum',
    subtitle:
        'connect, communicate, collaborate, etc. with other legal practitioners',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/news.png',
    title: 'News and updates',
    subtitle: 'latest information to keep you updated with latest happenings',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/proffesion.png',
    title: 'Get Help',
    subtitle: 'Contact a professional / consultant',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/calender.png',
    title: 'Calendar',
    subtitle: 'set your time and date for every activity',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/earn.png',
    title: 'Earn',
    subtitle: 'tell some one about us',
  ),
  ServicesModel(
    ontap: () {
      print('hi6');
    },
    iconaddress: 'assets/icons/survey.png',
    title: 'Take our Survey',
    subtitle: 'help us to serve you better',
  ),
];

///this class below is the builder of all the services

class ServicesList extends StatelessWidget {
  const ServicesList({
    Key key,

    ///this.controler,
  }) : super(key: key);

  /// final controler;

  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overscroll) {
        overscroll.disallowGlow();
        return;
      },
      child: ListView.builder(
        ///controller: controler,
        itemCount: services.length,
        itemBuilder: (context, index) => Column(
          children: [
            ListTile(
              onTap: services[index].ontap,
              leading: Container(
                height: 42.0,
                width: 42.0,
                padding: EdgeInsets.all(7),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kDeffaultColor.withOpacity(0.09),
                ),
                child: Image.asset(
                  services[index].iconaddress,
                  color: kDeffaultColor,
                ),
              ),
              title: Text(services[index].title,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(fontSize: 16)),
              subtitle: Text(
                services[index].subtitle,
                overflow: TextOverflow.ellipsis,
                style:
                    Theme.of(context).textTheme.caption.copyWith(fontSize: 14),
              ),
            ),
            Divider(
              height: 1,
            )
          ],
        ),
      ),
    );
  }
}
