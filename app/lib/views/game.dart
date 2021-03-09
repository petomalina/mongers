import 'package:app/components/resources/resources_bar.dart';
import 'package:app/views/game_base.dart';
import 'package:app/views/game_expeditions.dart';
import 'package:app/views/game_market.dart';
import 'package:app/views/game_tech.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GameView extends StatefulWidget {
  @override
  _GameViewState createState() => _GameViewState();
}

class _GameViewState extends State<GameView> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResourcesBar(height: 60),
      body: _buildView(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Theme.of(context).primaryColor),
          ),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: ((index) {
            setState(() {
              _currentIndex = index;
            });
          }),
          items: [
            _buildBarItem('Expeditions', Icons.map_outlined, true),
            _buildBarItem('Base', Icons.account_balance, false),
            _buildBarItem('Market', Icons.shopping_bag_outlined, false),
            _buildBarItem('Tech', Icons.account_tree_outlined, false),
          ],
        ),
      ),
    );
  }

  Widget _buildView() {
    switch (_currentIndex) {
      case 0:
        return GameExpeditionsView();
      case 1:
        return GameBaseView();
      case 2:
        return GameMarketView();
      case 3:
        return GameTechView();
    }
  }

  BottomNavigationBarItem _buildBarItem(
      String label, IconData icon, bool activeNofitications) {
    return BottomNavigationBarItem(
      icon: Stack(
        clipBehavior: Clip.none,
        children: [
          Icon(icon),
          if (activeNofitications)
            Positioned(
              right: -7,
              top: 0,
              child: Icon(
                Icons.sports_volleyball_outlined,
                size: 15,
                color: Theme.of(context).accentColor,
              ),
            )
        ],
      ),
      label: label,
    );
  }
}