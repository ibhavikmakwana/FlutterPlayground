//import 'package:firebase_admob/firebase_admob.dart';
//import 'package:flutter/material.dart';
//
//class AdMobExample extends StatefulWidget {
//  final String title;
//
//  AdMobExample(this.title);
//
//  @override
//  _AdMobExampleState createState() => _AdMobExampleState();
//}
//
//class _AdMobExampleState extends State<AdMobExample> {
//  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
//    keywords: <String>['Flutter'],
//    contentUrl: 'http://flutter.dev',
//    childDirected: true,
//    nonPersonalizedAds: true,
//  );
//
//  BannerAd _bannerAd;
//  InterstitialAd _interstitialAd;
//  int _coins = 0;
//
//  BannerAd createBannerAd() {
//    return BannerAd(
//      adUnitId: BannerAd.testAdUnitId, //Replace test unit ID wth actual Unit ID
//      size: AdSize.banner,
//      targetingInfo: targetingInfo,
//      listener: (MobileAdEvent event) {
//        print("BannerAd event $event");
//      },
//    );
//  }
//
//  InterstitialAd createInterstitialAd() {
//    return InterstitialAd(
//      adUnitId: InterstitialAd.testAdUnitId,
//      //Replace test unit ID wth actual Unit ID
//      targetingInfo: targetingInfo,
//      listener: (MobileAdEvent event) {
//        print("InterstitialAd event $event");
//      },
//    );
//  }
//
//  @override
//  void initState() {
//    super.initState();
//    FirebaseAdMob.instance.initialize(
//        appId: FirebaseAdMob.testAppId); //Replace test app ID wth actual app ID
//    _bannerAd = createBannerAd()..load();
//    RewardedVideoAd.instance.listener =
//        (RewardedVideoAdEvent event, {String rewardType, int rewardAmount}) {
//      print("RewardedVideoAd event $event");
//      if (event == RewardedVideoAdEvent.rewarded) {
//        setState(() {
//          _coins += rewardAmount;
//        });
//      }
//    };
//  }
//
//  @override
//  void dispose() {
//    _bannerAd?.dispose();
//    _interstitialAd?.dispose();
//    super.dispose();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text(widget.title),
//        ),
//        body: SingleChildScrollView(
//          child: Center(
//            child: Column(
//              crossAxisAlignment: CrossAxisAlignment.center,
//              mainAxisSize: MainAxisSize.min,
//              children: <Widget>[
//                RaisedButton(
//                    child: const Text('SHOW BANNER'),
//                    onPressed: () {
//                      _bannerAd ??= createBannerAd();
//                      _bannerAd
//                        ..load()
//                        ..show();
//                    }),
//                RaisedButton(
//                    child: const Text('REMOVE BANNER'),
//                    onPressed: () {
//                      _bannerAd?.dispose();
//                      _bannerAd = null;
//                    }),
//                RaisedButton(
//                  child: const Text('LOAD INTERSTITIAL'),
//                  onPressed: () {
//                    _interstitialAd?.dispose();
//                    _interstitialAd = createInterstitialAd()..load();
//                  },
//                ),
//                RaisedButton(
//                  child: const Text('SHOW INTERSTITIAL'),
//                  onPressed: () {
//                    _interstitialAd?.show();
//                  },
//                ),
//                RaisedButton(
//                  child: const Text('LOAD REWARDED VIDEO'),
//                  onPressed: () {
//                    RewardedVideoAd.instance.load(
//                        adUnitId: RewardedVideoAd.testAdUnitId,
//                        //Replace test unit ID wth actual Unit ID
//                        targetingInfo: targetingInfo);
//                  },
//                ),
//                RaisedButton(
//                  child: const Text('SHOW REWARDED VIDEO'),
//                  onPressed: () {
//                    RewardedVideoAd.instance.show();
//                  },
//                ),
//                Text("You have $_coins coins."),
//              ].map((Widget button) {
//                return Padding(
//                  padding: const EdgeInsets.symmetric(vertical: 16.0),
//                  child: button,
//                );
//              }).toList(),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//}
