import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wallpaperapp/Screens/zaid.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  void changeBrightness() {
    DynamicTheme.of(context).setBrightness(
        Theme.of(context).brightness == Brightness.dark
            ? Brightness.light
            : Brightness.dark);
  }

  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 32,
              ),
              Text(
                'Setting',
                style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w700, fontSize: 24),
              ),
              SizedBox(
                height: 16,
              ),
              ListTile(
                leading: Icon(
                  Icons.brightness_6_sharp,
                  size: 32,
                ),
                title: Text(
                  'Theme',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 16),
                ),
                trailing: toggle(),
              ),
              SafeArea(
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: SizedBox(
                          height: 60,
                          width: 60,
                          child: Image.asset('assets/images/logo.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Card(
                          elevation: 7,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'The Creator of Wooble',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500),
                                      softWrap: true,
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  InkWell(
                                    child: Container(
                                      height: 90,
                                      width: 90,
                                      margin: EdgeInsets.fromLTRB(8, 20, 8, 8),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.amber.shade50,
                                            width: 2),
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              "https://avatars.githubusercontent.com/u/76097144?v=4"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Zaid(),
                                        ),
                                      );
                                    },
                                  ),
                                  Text(
                                    'Zaid Mukaddam',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 2,
                                      color: HexColor('00EAD3'),
                                    ),
                                  ),
                                  Text(
                                    'Android App Development',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Text(
                                    'Data Science | Web Development',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Text(
                                    'UI & UX Design',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Container(
                                      width: 120,
                                      child: Divider(
                                        thickness: 2,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget toggle() {
    return CupertinoSwitch(
      value: _switchValue,
      activeColor: Colors.blue,
      onChanged: (value) {
        setState(() {
          _switchValue = !_switchValue;
          changeBrightness();
        });
      },
    );
  }
}
