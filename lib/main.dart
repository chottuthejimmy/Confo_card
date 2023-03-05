import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  bool _isVisible = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Confo card',
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff93F9B9),
                Color(0xff068a7d),
              ],
            ),
          ),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(height: 100.0),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueGrey.shade700.withOpacity(1),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    radius: 60.0,
                    child: Image.asset(
                      'images/profile-modified.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: Text(
                    'Tarun Kumar S',
                    style: TextStyle(
                      fontFamily: 'Merienda',
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'FLUTTER DEVELOPER',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 14.0,
                      color: Colors.black87,
                      letterSpacing: 3.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                    height: 20.0,
                    width: 150.0,
                    child: Divider(
                      color: Colors.cyan.shade900,
                      thickness: 1.0,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 7.0,
                          minimumSize: Size(310, 33),
                          maximumSize: Size(310, 33),
                          foregroundColor: Color(0xF9690BEE),
                          backgroundColor: Color(0xff18FFE5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                        onPressed: () async {
                          Uri phoneNumber = Uri.parse('tel:+919113061380');
                          try {
                            launchUrl(phoneNumber);
                          } catch (e) {
                            print("Aww , Sorry Something Went Wrong!! 😶");
                          }
                        },
                        child: Row(
                          children: <Widget>[
                            SizedBox(width: 73.0),
                            Icon(Icons.phone, color: Colors.cyan.shade900),
                            SizedBox(width: 7.0),
                            Text(
                              ' Call me',
                              style: TextStyle(
                                  fontFamily: 'Pacific',
                                  fontSize: 19.0,
                                  letterSpacing: 1.875),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 7.0,
                            minimumSize: Size(310, 33),
                            maximumSize: Size(310, 33),
                            foregroundColor: Color(0xF9690BEE),
                            backgroundColor: Color(0xff18FFE5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          onPressed: () async {
                            Uri emailUrl = Uri.parse(
                                'mailto:srfashionstks@gmail.com?subject=Namaste 🙏&body=Hello%20there 😊');
                            try {
                              launchUrl(emailUrl);
                            } catch (e) {
                              print("Aww , Sorry Something Went Wrong!! 😶");
                            }
                          },
                          child: Row(
                            children: <Widget>[
                              SizedBox(width: 73.0),
                              Icon(Icons.email, color: Colors.cyan.shade900),
                              SizedBox(width: 7.0),
                              Text(
                                ' Email me',
                                style: TextStyle(
                                    fontFamily: 'Pacific',
                                    fontSize: 19.0,
                                    letterSpacing: 1.875),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 7.0,
                          minimumSize: Size(310, 33),
                          maximumSize: Size(310, 33),
                          foregroundColor: Color(0xF9690BEE),
                          backgroundColor: Color(0xff18FFE5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                        onPressed: () async {
                          Uri whatsappUrl = Uri.parse(
                              "whatsapp://send?phone=${919113061380}&text=${"Hello!! 😊"}");
                          try {
                            launchUrl(whatsappUrl);
                          } catch (e) {
                            //To handle error and display error message
                            print("Aww , Sorry Something Went Wrong!! 😶");
                          }
                        },
                        child: Row(
                          children: <Widget>[
                            SizedBox(width: 73.0),
                            Container(
                              height: 22.0,
                              child: SvgPicture.asset(
                                'icons/whatsapp-icon.svg',
                                height: 22.0,
                                color: Colors.cyan.shade900,
                              ),
                            ),
                            SizedBox(width: 7.0),
                            Text(
                              ' Text me',
                              style: TextStyle(
                                fontFamily: 'Pacific',
                                fontSize: 19.0,
                                letterSpacing: 1.875,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 7.0,
                            minimumSize: Size(310, 33),
                            maximumSize: Size(310, 33),
                            foregroundColor: Color(0xF9690BEE),
                            backgroundColor: Color(0xff18FFE5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          onPressed: () async {
                            setState(() {
                              _isVisible = !_isVisible;
                            });
                          },
                          child: Row(
                            children: <Widget>[
                              SizedBox(width: 56.0),
                              Icon(Icons.engineering,
                                  color: Colors.cyan.shade900),
                              SizedBox(width: 7.0),
                              Text(
                                " Let's Connect",
                                style: TextStyle(
                                    fontFamily: 'Pacific',
                                    fontSize: 19.0,
                                    letterSpacing: 1.875),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15.0),
                      Visibility(
                        visible: _isVisible,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              iconSize: 45.0,
                              onPressed: () async {
                                Uri twitterUrl = Uri.parse(
                                    'https://twitter.com/chottuthejimmy');
                                try {
                                  await launch(twitterUrl.toString());
                                } catch (e) {
                                  print(
                                      "Aww , Sorry Something Went Wrong!! 😶");
                                }
                              },
                              icon: SvgPicture.asset(
                                'icons/twitter-dark.svg',
                                height: 45.0,
                                width: 45.0,
                              ),
                            ),
                            IconButton(
                              iconSize: 55.0,
                              onPressed: () async {
                                Uri linkedin = Uri.parse(
                                    'https://www.linkedin.com/in/tarun-kumar-s-30b60b19a');
                                try {
                                  await launch(linkedin.toString());
                                } catch (e) {
                                  print(
                                      "Aww , Sorry Something Went Wrong!! 😶");
                                }
                              },
                              icon: SvgPicture.asset(
                                'icons/linkedin-dark.svg',
                                height: 45.0,
                                width: 45.0,
                              ),
                            ),
                            IconButton(
                              iconSize: 42.0,
                              onPressed: () async {
                                Uri instagram = Uri.parse(
                                    'https://www.instagram.com/tarun_the_thor');
                                try {
                                  await launch(instagram.toString());
                                } catch (e) {
                                  print(
                                      "Aww , Sorry Something Went Wrong!! 😶");
                                }
                              },
                              icon: SvgPicture.asset(
                                'icons/instagram-dark.svg',
                                height: 42.0,
                                width: 42.0,
                              ),
                            ),
                            IconButton(
                              iconSize: 55.0,
                              onPressed: () async {
                                Uri github = Uri.parse(
                                    'https://github.com/chottuthejimmy');
                                try {
                                  await launch(github.toString());
                                } catch (e) {
                                  print(
                                      "Aww , Sorry Something Went Wrong!! 😶");
                                }
                              },
                              icon: SvgPicture.asset(
                                'icons/github-dark.svg',
                                height: 42.0,
                                width: 42.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
