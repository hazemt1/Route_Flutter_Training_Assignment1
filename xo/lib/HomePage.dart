import 'package:flutter/material.dart';

import 'GameButton.dart';
import 'GameMechanics.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GameMechanics gameMechanics = new GameMechanics(
    playerStatus: true,
    win: -1,
    buttonText: ['', '', '', '', '', '', '', '', ''],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(70)),
            Text(
              'Current Player: ${gameMechanics.player}',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Padding(padding: EdgeInsets.all(30)),
            Row(
              children: [
                GameButton(
                  () => {
                    setState(() {
                      buttonPress(gameMechanics, 0,context);
                    })
                  },
                  gameMechanics.buttonText[0],
                  right: 2,
                  bottom: 2,
                ),
                GameButton(
                  () => {
                    setState(() {
                      buttonPress(gameMechanics, 1,context);
                    })
                  },
                  gameMechanics.buttonText[1],
                  bottom: 2,
                ),
                GameButton(
                  () => {
                    setState(() {
                      buttonPress(gameMechanics, 2,context);
                    })
                  },
                  gameMechanics.buttonText[2],
                  left: 2,
                  bottom: 2,
                ),
              ],
            ),
            Row(
              children: [
                GameButton(
                  () => {
                    setState(() {
                      buttonPress(gameMechanics, 3,context);
                    })
                  },
                  gameMechanics.buttonText[3],
                  right: 2,
                  bottom: 2,
                ),
                GameButton(
                  () => {
                    setState(() {
                      buttonPress(gameMechanics, 4,context);
                    })
                  },
                  gameMechanics.buttonText[4],
                  bottom: 2,
                ),
                GameButton(
                  () => {
                    setState(() {
                      buttonPress(gameMechanics, 5,context);
                    })
                  },
                  gameMechanics.buttonText[5],
                  left: 2,
                  bottom: 2,
                ),
              ],
            ),
            Row(
              children: [
                GameButton(
                  () => {
                    setState(() {
                      buttonPress(gameMechanics, 6,context);
                    })
                  },
                  gameMechanics.buttonText[6],
                  right: 2,
                ),
                GameButton(
                  () => {
                    setState(() {
                      buttonPress(gameMechanics, 7,context);
                    })
                  },
                  gameMechanics.buttonText[7],
                ),
                GameButton(
                  () => {
                    setState(() {
                      buttonPress(gameMechanics, 8,context);
                    })
                  },
                  gameMechanics.buttonText[8],
                  left: 2,
                ),
              ],
            ),
            Spacer(),
            Container(
              child: MaterialButton(
                child: Text(
                  'New game',
                ),
                onPressed: () => {
                  setState(() {
                    gameMechanics = new GameMechanics(
                      playerStatus: true,
                      win: -1,
                      buttonText: ['', '', '', '', '', '', '', '', ''],
                    );
                  })
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
