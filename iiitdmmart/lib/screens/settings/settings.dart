import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';
class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextStyle headingStyle = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black);

  bool lockAppSwitchVal = true;
  bool fingerprintSwitchVal = false;
  bool changePassSwitchVal = true;

  TextStyle headingStyleIOS = const TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: CupertinoColors.black,
  );
  TextStyle descStyleIOS = const TextStyle(color: CupertinoColors.black);

  @override
  Widget build(BuildContext context) {
    return (Platform.isAndroid)
        ? MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
              toolbarHeight: 45,
              leading: IconButton(onPressed: (){},icon: const Icon(Icons.help_outline_sharp)),
              actions: [
                IconButton(onPressed: (){}, icon: const Icon(Icons.search_rounded)),
              ],
              title: "Settings".text.white.bold.make(),
            ),
            body: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(12),
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Common",
                          style: headingStyle,
                        ),
                      ],
                    ),
                    const ListTile(
                      leading: Icon(Icons.language),
                      title: Text("Language"),
                      subtitle: Text("English"),
                    ),
                    const Divider(),
                    const ListTile(
                      leading: Icon(Icons.cloud),
                      title: Text("Environment"),
                      subtitle: Text("Production"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Account", style: headingStyle),
                      ],
                    ),
                    const ListTile(
                      leading: Icon(Icons.edit),
                      title: Text("Edit Profile"),
                    ),
                    const Divider(),
                    const ListTile(
                      leading: Icon(Icons.mail),
                      title: Text("Email"),
                    ),
                    const Divider(),
                    const ListTile(
                      leading: Icon(Icons.exit_to_app),
                      title: Text("Sign Out"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Security", style: headingStyle),
                      ],
                    ),
                    ListTile(
                      leading: const Icon(Icons.phonelink_lock_outlined),
                      title: const Text("Lock app in background"),
                      trailing: Switch(
                          value: lockAppSwitchVal,
                          activeColor: Colors.black,
                          onChanged: (val) {
                            setState(() {
                              lockAppSwitchVal = val;
                            });
                          }),
                    ),
                    const Divider(),
                    ListTile(
                      leading: const Icon(Icons.fingerprint),
                      title: const Text("Use fingerprint"),
                      trailing: Switch(
                          value: fingerprintSwitchVal,
                          activeColor: Colors.black,
                          onChanged: (val) {
                            setState(() {
                              fingerprintSwitchVal = val;
                            });
                          }),
                    ),
                    const Divider(),
                    ListTile(
                      leading: const Icon(Icons.lock),
                      title: const Text("Change Password"),
                      trailing: Switch(
                          value: changePassSwitchVal,
                          activeColor: Colors.black,
                          onChanged: (val) {
                            setState(() {
                              changePassSwitchVal = val;
                            });
                          }),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Misc", style: headingStyle),
                      ],
                    ),
                    const ListTile(
                      leading: Icon(Icons.file_open_outlined),
                      title: Text("Terms of Service"),
                    ),
                    const Divider(),
                    const ListTile(
                      leading: Icon(Icons.file_copy_outlined),
                      title: Text("Open Source and Licences"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
            : CupertinoApp(
            debugShowCheckedModeBanner: false,
              home: CupertinoPageScaffold(
                navigationBar: const CupertinoNavigationBar(
                  backgroundColor: CupertinoColors.black,
                  middle: Text("Settings UI"),
                ),
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: CupertinoColors.extraLightBackgroundGray,
                  child: Column(
                    children: [
                      //Common
                      const SizedBox(height: 14),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(width: 12),
                          Text(
                            "Common",
                            style: headingStyleIOS,
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Container(
                        width: double.infinity,
                        color: CupertinoColors.white,
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: double.infinity,
                              height: 38,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SizedBox(width: 12),
                                  const Icon(
                                    Icons.language,
                                    color: Colors.black,
                                  ),
                                  const SizedBox(width: 12),
                                  const Text("Language"),
                                  const Spacer(),
                                  Text(
                                    "English",
                                    style: descStyleIOS,
                                  ),
                                  const SizedBox(width: 5),
                                  const Icon(
                                    CupertinoIcons.right_chevron,
                                    color: CupertinoColors.black,
                                  ),
                                  const SizedBox(width: 8),
                                ],
                              ),
                            ),
                            const Divider(),
                            Container(
                              width: double.infinity,
                              height: 38,
                              alignment: Alignment.center,
                              child: Row(
                                children: [
                                  const SizedBox(width: 12),
                                  const Icon(
                                    Icons.cloud,
                                    color: Colors.black,
                                  ),
                                  const SizedBox(width: 12),
                                  const Text("Environment"),
                                  const Spacer(),
                                  Text(
                                    "Production",
                                    style: descStyleIOS,
                                  ),
                                  const SizedBox(width: 5),
                                  const Icon(
                                    CupertinoIcons.right_chevron,
                                    color: CupertinoColors.black,
                                  ),
                                  const SizedBox(width: 8),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Account
                      const SizedBox(height: 14),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(width: 12),
                          Text(
                            "Account",
                            style: headingStyleIOS,
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Container(
                        width: double.infinity,
                        color: CupertinoColors.white,
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: double.infinity,
                              height: 38,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  SizedBox(width: 12),
                                  Icon(
                                    Icons.phone,
                                    color: Colors.black,
                                  ),
                                  SizedBox(width: 12),
                                  Text("Phone Number"),
                                  Spacer(),
                                  Icon(
                                    CupertinoIcons.right_chevron,
                                    color: CupertinoColors.black,
                                  ),
                                  SizedBox(width: 8),
                                ],
                              ),
                            ),
                            const Divider(),
                            Container(
                              alignment: Alignment.center,
                              width: double.infinity,
                              height: 38,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  SizedBox(width: 12),
                                  Icon(
                                    Icons.mail,
                                    color: Colors.black,
                                  ),
                                  SizedBox(width: 12),
                                  Text("Email"),
                                  Spacer(),
                                  Icon(
                                    CupertinoIcons.right_chevron,
                                    color: CupertinoColors.black,
                                  ),
                                  SizedBox(width: 8),
                                ],
                              ),
                            ),
                            const Divider(),
                            Container(
                              alignment: Alignment.center,
                              width: double.infinity,
                              height: 38,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  SizedBox(width: 12),
                                  Icon(
                                    Icons.exit_to_app,
                                    color: Colors.black,
                                  ),
                                  SizedBox(width: 12),
                                  Text("Sign Out"),
                                  Spacer(),
                                  Icon(
                                    CupertinoIcons.right_chevron,
                                    color: CupertinoColors.black,
                                  ),
                                  SizedBox(width: 8),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Security
                      const SizedBox(height: 14),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(width: 12),
                          Text(
                            "Security",
                            style: headingStyleIOS,
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Container(
                        width: double.infinity,
                        color: CupertinoColors.white,
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: double.infinity,
                              height: 38,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SizedBox(width: 12),
                                  const Icon(
                                    Icons.phonelink_lock_outlined,
                                    color: Colors.black,
                                  ),
                                  const SizedBox(width: 12),
                                  const Text("Lock app in Background"),
                                  const Spacer(),
                                  CupertinoSwitch(
                                      value: lockAppSwitchVal,
                                      activeColor: CupertinoColors.black,
                                      onChanged: (val) {
                                        setState(() {
                                          lockAppSwitchVal = val;
                                        });
                                      }),
                                  const SizedBox(width: 8),
                                ],
                              ),
                            ),
                            const Divider(),
                            Container(
                              alignment: Alignment.center,
                              width: double.infinity,
                              height: 38,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SizedBox(width: 12),
                                  const Icon(
                                    Icons.fingerprint,
                                    color: Colors.black,
                                  ),
                                  const SizedBox(width: 12),
                                  const Text("Use Fingerprint"),
                                  const Spacer(),
                                  CupertinoSwitch(
                                    value: fingerprintSwitchVal,
                                    onChanged: (val) {
                                      setState(() {
                                        fingerprintSwitchVal = val;
                                      });
                                    },
                                  ),
                                  const SizedBox(width: 8),
                                ],
                              ),
                            ),
                            const Divider(),
                            Container(
                              alignment: Alignment.center,
                              width: double.infinity,
                              height: 38,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SizedBox(width: 12),
                                  const Icon(
                                    Icons.lock,
                                    color: Colors.black,
                                  ),
                                  const SizedBox(width: 12),
                                  const Text("Change Password"),
                                  const Spacer(),
                                  CupertinoSwitch(
                                    value: changePassSwitchVal,
                                    activeColor: CupertinoColors.black,
                                    onChanged: (val) {
                                      setState(() {
                                        changePassSwitchVal = val;
                                      });
                                    },
                                  ),
                                  const SizedBox(width: 8),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Misc
                      const SizedBox(height: 14),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(width: 12),
                          Text(
                            "Misc",
                            style: headingStyleIOS,
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Container(
                        width: double.infinity,
                        color: CupertinoColors.white,
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: double.infinity,
                              height: 38,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  SizedBox(width: 12),
                                  Icon(
                                    Icons.file_open_sharp,
                                    color: Colors.black,
                                  ),
                                  SizedBox(width: 12),
                                  Text("Terms of Service"),
                                  Spacer(),
                                  Icon(
                                    CupertinoIcons.right_chevron,
                                    color: CupertinoColors.black,
                                  ),
                                  SizedBox(width: 8),
                                ],
                              ),
                            ),
                            const Divider(),
                            Container(
                              alignment: Alignment.center,
                              width: double.infinity,
                              height: 38,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  SizedBox(width: 12),
                                  Icon(
                                    Icons.file_copy_sharp,
                                    color: Colors.black,
                                  ),
                                  SizedBox(width: 12),
                                  Text("Open Source Licenses"),
                                  Spacer(),
                                  Icon(
                                    CupertinoIcons.right_chevron,
                                    color: CupertinoColors.black,
                                  ),
                                  SizedBox(width: 8),
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
        );
  }
}