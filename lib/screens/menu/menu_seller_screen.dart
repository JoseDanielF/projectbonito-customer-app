import 'package:ecommercebonito/components/utils/horizontal_spacer_box.dart';
import 'package:ecommercebonito/components/utils/vertical_spacer_box.dart';
import 'package:ecommercebonito/screens/home/home_screen_controller.dart';
import 'package:ecommercebonito/screens/screens_index.dart';
import 'package:ecommercebonito/shared/components/BottomNavigation.dart';
import 'package:ecommercebonito/shared/constants/app_enums.dart';
import 'package:ecommercebonito/shared/constants/style_constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../assets/index.dart';

class MenuSellerScreen extends StatefulWidget {
  const MenuSellerScreen({Key? key}) : super(key: key);

  @override
  State<MenuSellerScreen> createState() => _MenuSellerScreenState();
}

class _MenuSellerScreenState extends State<MenuSellerScreen> {
  @override
  Widget build(BuildContext context) {
    final whats =
        Uri.parse('https://api.whatsapp.com/send?phone=5581997128385');
    // ignore: no_leading_underscores_for_local_identifiers
    int _selectedIndex = 0;
    Size size = MediaQuery.of(context).size;
    return ChangeNotifierProvider(
      create: (_) => HomeScreenController(),
      builder: (context, child) => Consumer<HomeScreenController>(
        builder: ((context, controller, child) => Scaffold(
              appBar: AppBar(
                title: const Text(
                  'Ecommerce Bonito',
                  style: TextStyle(color: kOnSurfaceColor),
                ),
                centerTitle: true,
                backgroundColor: kDetailColor,
                actions: <Widget>[
                  IconButton(
                    icon: const Icon(
                      Icons.menu,
                      color: kOnSurfaceColor,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, Screens.profile);
                    },
                  ), //IconButton
                ],
                //IconButton
              ),
              bottomNavigationBar:
                  BottomNavigation(selectedIndex: _selectedIndex),
              body: SingleChildScrollView(
                child: Container(
                  color: kOnSurfaceColor,
                  width: size.width,
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      InkWell(
                        child: Container(
                          width: 440,
                          height: 90,
                          decoration: BoxDecoration(
                            color: kOnSurfaceColor,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                            boxShadow: [
                              BoxShadow(
                                color: kTextButtonColor.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(
                                    0, 0), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Center(
                            child: Wrap(
                              children: [
                                Row(
                                  children: [
                                    const HorizontalSpacerBox(
                                        size: SpacerSize.large),
                                    Container(
                                      transformAlignment: Alignment.center,
                                      alignment: Alignment.center,
                                      width: 65.0,
                                      height: 65.0,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: NetworkImage(
                                              "https://gentv.com.br/img/content/266-1"),
                                        ),
                                      ),
                                    ),
                                    const HorizontalSpacerBox(
                                        size: SpacerSize.large),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const VerticalSpacerBox(
                                            size: SpacerSize.medium),
                                        Row(
                                          children: const [
                                            Text(
                                              'João Frutas',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            const Text(
                                              'Contato: (11) 99999-9999',
                                            ),
                                            IconButton(
                                              onPressed: () async {
                                                if (await canLaunchUrl(whats)) {
                                                  await launchUrl(whats);
                                                }
                                              },
                                              icon: const Icon(
                                                Icons.whatsapp,
                                                color: kButtom,
                                                size: 30,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, Screens.menuSeller);
                        },
                      ),
                      const VerticalSpacerBox(size: SpacerSize.medium),
                      const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              hintText: 'Buscar',
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 15),
                              isDense: true,
                              prefixIcon: Icon(
                                Icons.search,
                                color: kDetailColor,
                                size: 25,
                              ),
                            )),
                      ),
                      const VerticalSpacerBox(size: SpacerSize.medium),
                      SingleChildScrollView(
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                child: Container(
                                  width: 210,
                                  height: 300,
                                  decoration: BoxDecoration(
                                    color: kOnSurfaceColor,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15)),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            kTextButtonColor.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: const Offset(
                                            0, 5), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    child: Wrap(
                                      children: [
                                        Row(
                                          children: [
                                            const HorizontalSpacerBox(
                                                size: SpacerSize.large),
                                            Container(
                                              width: 160.0,
                                              height: 180.0,
                                              decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image:
                                                      AssetImage(Assets.banana),
                                                ),
                                              ),
                                            ),
                                            const HorizontalSpacerBox(
                                                size: SpacerSize.large),
                                          ],
                                        ),
                                        const HorizontalSpacerBox(
                                            size: SpacerSize.small),
                                        const Text(
                                          'RS 0,25',
                                          style: TextStyle(
                                              fontSize: 35,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.end,
                                        ),
                                        const HorizontalSpacerBox(
                                            size: SpacerSize.small),
                                        const Text(
                                          'Unidade',
                                        ),
                                        Row(
                                          children: const [
                                            HorizontalSpacerBox(
                                                size: SpacerSize.small),
                                            Text(
                                              'Banana',
                                              style: TextStyle(
                                                fontSize: 20,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const VerticalSpacerBox(
                                            size: SpacerSize.tiny),
                                        Row(
                                          children: const [
                                            HorizontalSpacerBox(
                                                size: SpacerSize.small),
                                            Text(
                                              'Vendido por ',
                                              style: TextStyle(
                                                fontSize: 16,
                                              ),
                                            ),
                                            Text(
                                              'Maria',
                                              style: TextStyle(
                                                  fontSize: 16, color: kButtom),
                                            ),
                                            Spacer(),
                                            IconButton(
                                              onPressed: null,
                                              icon: Icon(
                                                Icons.add_box,
                                                color: kButtom,
                                                size: 35,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                onTap: () async {},
                              ),
                              const HorizontalSpacerBox(size: SpacerSize.tiny),
                              InkWell(
                                child: Container(
                                  width: 210,
                                  height: 300,
                                  decoration: BoxDecoration(
                                    color: kOnSurfaceColor,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15)),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            kTextButtonColor.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: const Offset(
                                            0, 5), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    child: Wrap(
                                      children: [
                                        Row(
                                          children: [
                                            const HorizontalSpacerBox(
                                                size: SpacerSize.large),
                                            Container(
                                              width: 160.0,
                                              height: 180.0,
                                              decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image:
                                                      AssetImage(Assets.maca),
                                                ),
                                              ),
                                            ),
                                            const HorizontalSpacerBox(
                                                size: SpacerSize.large),
                                          ],
                                        ),
                                        const HorizontalSpacerBox(
                                            size: SpacerSize.small),
                                        const Text(
                                          'RS 1,18',
                                          style: TextStyle(
                                              fontSize: 35,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.end,
                                        ),
                                        const HorizontalSpacerBox(
                                            size: SpacerSize.small),
                                        const Text(
                                          'Unidade',
                                        ),
                                        Row(
                                          children: const [
                                            HorizontalSpacerBox(
                                                size: SpacerSize.small),
                                            Text(
                                              'Maça',
                                              style: TextStyle(
                                                fontSize: 20,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const VerticalSpacerBox(
                                            size: SpacerSize.tiny),
                                        Row(
                                          children: const [
                                            HorizontalSpacerBox(
                                                size: SpacerSize.small),
                                            Text(
                                              'Vendido por ',
                                              style: TextStyle(
                                                fontSize: 16,
                                              ),
                                            ),
                                            Text(
                                              'João',
                                              style: TextStyle(
                                                  fontSize: 16, color: kButtom),
                                            ),
                                            Spacer(),
                                            IconButton(
                                              onPressed: null,
                                              icon: Icon(
                                                Icons.add_box,
                                                color: kButtom,
                                                size: 35,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                onTap: () async {},
                              ),
                            ],
                          ),
                        ),
                      ),
                      const VerticalSpacerBox(size: SpacerSize.small),
                      SingleChildScrollView(
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                child: Container(
                                  width: 210,
                                  height: 300,
                                  decoration: BoxDecoration(
                                    color: kOnSurfaceColor,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15)),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            kTextButtonColor.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: const Offset(
                                            0, 5), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    child: Wrap(
                                      children: [
                                        Row(
                                          children: [
                                            const HorizontalSpacerBox(
                                                size: SpacerSize.large),
                                            Container(
                                              width: 160.0,
                                              height: 180.0,
                                              decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(
                                                      Assets.melancia),
                                                ),
                                              ),
                                            ),
                                            const HorizontalSpacerBox(
                                                size: SpacerSize.large),
                                          ],
                                        ),
                                        const HorizontalSpacerBox(
                                            size: SpacerSize.small),
                                        const Text(
                                          'RS 3,18',
                                          style: TextStyle(
                                              fontSize: 35,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.end,
                                        ),
                                        const HorizontalSpacerBox(
                                            size: SpacerSize.small),
                                        const Text(
                                          'Unidade',
                                        ),
                                        Row(
                                          children: const [
                                            HorizontalSpacerBox(
                                                size: SpacerSize.small),
                                            Text(
                                              'Melancia',
                                              style: TextStyle(
                                                fontSize: 20,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const VerticalSpacerBox(
                                            size: SpacerSize.tiny),
                                        Row(
                                          children: const [
                                            HorizontalSpacerBox(
                                                size: SpacerSize.small),
                                            Text(
                                              'Vendido por ',
                                              style: TextStyle(
                                                fontSize: 16,
                                              ),
                                            ),
                                            Text(
                                              'Maria',
                                              style: TextStyle(
                                                  fontSize: 16, color: kButtom),
                                            ),
                                            Spacer(),
                                            IconButton(
                                              onPressed: null,
                                              icon: Icon(
                                                Icons.add_box,
                                                color: kButtom,
                                                size: 35,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                onTap: () async {},
                              ),
                              const HorizontalSpacerBox(size: SpacerSize.tiny),
                              InkWell(
                                child: Container(
                                  width: 210,
                                  height: 300,
                                  decoration: BoxDecoration(
                                    color: kOnSurfaceColor,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15)),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            kTextButtonColor.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: const Offset(
                                            0, 5), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    child: Wrap(
                                      children: [
                                        Row(
                                          children: [
                                            const HorizontalSpacerBox(
                                                size: SpacerSize.large),
                                            Container(
                                              width: 160.0,
                                              height: 180.0,
                                              decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image:
                                                      AssetImage(Assets.limao),
                                                ),
                                              ),
                                            ),
                                            const HorizontalSpacerBox(
                                                size: SpacerSize.large),
                                          ],
                                        ),
                                        const HorizontalSpacerBox(
                                            size: SpacerSize.small),
                                        const Text(
                                          'RS 0,50',
                                          style: TextStyle(
                                              fontSize: 35,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.end,
                                        ),
                                        const HorizontalSpacerBox(
                                            size: SpacerSize.small),
                                        const Text(
                                          'Unidade',
                                        ),
                                        Row(
                                          children: const [
                                            HorizontalSpacerBox(
                                                size: SpacerSize.small),
                                            Text(
                                              'Limão',
                                              style: TextStyle(
                                                fontSize: 20,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const VerticalSpacerBox(
                                            size: SpacerSize.tiny),
                                        Row(
                                          children: const [
                                            HorizontalSpacerBox(
                                                size: SpacerSize.small),
                                            Text(
                                              'Vendido por ',
                                              style: TextStyle(
                                                fontSize: 16,
                                              ),
                                            ),
                                            Text(
                                              'João',
                                              style: TextStyle(
                                                  fontSize: 16, color: kButtom),
                                            ),
                                            Spacer(),
                                            IconButton(
                                              onPressed: null,
                                              icon: Icon(
                                                Icons.add_box,
                                                color: kButtom,
                                                size: 35,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                onTap: () async {},
                              ),
                            ],
                          ),
                        ),
                      ),
                      const VerticalSpacerBox(size: SpacerSize.small),
                    ],
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
