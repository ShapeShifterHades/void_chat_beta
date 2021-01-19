import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:void_chat_beta/constants/constants.dart';

import 'widgets/drawer_menu_pm_tile.dart';

class DrawerPM extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).backgroundColor,
      child: SafeArea(
        child: Row(
          children: [
            SizedBox(width: MediaQuery.of(context).size.width * 0.05),
            Container(
              height: MediaQuery.of(context).size.height * 0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(width: 10),
                      Center(
                          child: Text(
                        'Yorkee\n v.1.0.0 beta',
                        style: GoogleFonts.jura(
                          fontSize: 26,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    ],
                  )),
                  DrawerMenuPMTile(
                    text: 'Messages',
                    iconData: Icons.inbox_outlined,
                    route: homeRoute,
                  ),
                  SizedBox(height: 30),
                  DrawerMenuPMTile(
                    text: 'Contacts',
                    iconData: Icons.contacts_outlined,
                    route: contactsRoute,
                  ),
                  SizedBox(height: 30),
                  DrawerMenuPMTile(
                      text: 'Settings',
                      iconData: Icons.settings_applications_outlined,
                      route: settingsRoute),
                  SizedBox(height: 30),
                  DrawerMenuPMTile(
                    text: 'Security',
                    iconData: Icons.account_circle_outlined,
                    route: securityRoute,
                  ),
                  SizedBox(height: 30),
                  DrawerMenuPMTile(
                    text: 'FAQ',
                    iconData: Icons.menu_book_outlined,
                    route: faqRoute,
                  ),
                  SizedBox(height: 30),
                  DrawerMenuPMTile(
                    text: 'Logout',
                    iconData: Icons.logout,
                    route: '/logout',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
