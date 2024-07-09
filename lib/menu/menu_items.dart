import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final String icon;
  //final IconData icon;

const  MenuItem({  //constructor
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon
  });
}

// ---------------data------------------------
const appMenuItems =  <MenuItem>[
  MenuItem(
    title: 'GESTION',
    subTitle: 'Gestionar data',
    link: '/gestionar',
    icon: 'images/mcqs.png', //Icons.smart_button_outlined
  ),
  MenuItem(
    title: 'SHOP',
    subTitle: 'Visualizar catálogo',
    link: '/shop',
    icon: 'images/quiz.png', //Icons.credit_card
  ),
  MenuItem(
    title: 'REPORTES',
    subTitle: 'Visualizar reportes',
    link: '/reportes',
    icon: 'images/pdf.png', //Icons.credit_card
  ),
  MenuItem(
    title: 'XLSX',
    subTitle: 'Visualizar reportes',
    link: '/',
    icon: 'images/pastpapers.png', //Icons.credit_card
  ),
  MenuItem(
    title: 'JOB',
    subTitle: 'Visualizar reportes',
    link: '/',
    icon: 'images/job.png', //Icons.credit_card
  ),
  MenuItem(
    title: 'ABOUT',
    subTitle: 'Visualizar reportes',
    link: '/',
    icon: 'images/about.png', //Icons.credit_card
  ),
  MenuItem(
    title: 'ABOUT',
    subTitle: 'Visualizar reportes',
    link: '/',
    icon: 'images/about.png', //Icons.credit_card
  ),
  
];