import 'package:flutter/material.dart';
import 'package:xo/ResultScreen.dart';

import 'HomePage.dart';

class GameMechanics {
  bool playerStatus;
  String player= 'Player 1';

  int win;

  List<String> buttonText;
  GameMechanics({this.playerStatus, this.buttonText, this.win});
}

void buttonPress(GameMechanics gameMechanics, int position,BuildContext context) {
  if (gameMechanics.buttonText[position] == '' && gameMechanics.win == -1) {
    if (gameMechanics.playerStatus) {
      gameMechanics.buttonText[position] += 'X';
      gameMechanics.playerStatus = false;
    } else {
      gameMechanics.buttonText[position] += 'O';
      gameMechanics.playerStatus = true;
    }
    checkWinner(gameMechanics);
    if(gameMechanics.win==-1)
      changePlayer(gameMechanics);
    else {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ResultScreen(gameMechanics.win)),
      );
    }
  }
}

void checkWinner(GameMechanics gameMechanics) {
  if (gameMechanics.buttonText[0] == gameMechanics.buttonText[1] &&
      gameMechanics.buttonText[1] == gameMechanics.buttonText[2] &&
      gameMechanics.buttonText[0] != '') {
    print('entered1');
    if (gameMechanics.buttonText[0] == 'X')
      gameMechanics.win = 0;
    else
      gameMechanics.win = 1;
  } else if (gameMechanics.buttonText[3] == gameMechanics.buttonText[4] &&
      gameMechanics.buttonText[4] == gameMechanics.buttonText[5] &&
      gameMechanics.buttonText[4] != '') {
    print('entered2');
    if (gameMechanics.buttonText[4] == 'X')
      gameMechanics.win = 0;
    else
      gameMechanics.win = 1;
  } else if (gameMechanics.buttonText[6] == gameMechanics.buttonText[7] &&
      gameMechanics.buttonText[7] == gameMechanics.buttonText[8] &&
      gameMechanics.buttonText[7] != '') {
    print('entered3');
    if (gameMechanics.buttonText[6] == 'X')
      gameMechanics.win = 0;
    else
      gameMechanics.win = 1;
  } else if (gameMechanics.buttonText[0] == gameMechanics.buttonText[3] &&
      gameMechanics.buttonText[3] == gameMechanics.buttonText[6] &&
      gameMechanics.buttonText[0] != '') {
    print('entered4');
    if (gameMechanics.buttonText[0] == 'X')
      gameMechanics.win = 0;
    else
      gameMechanics.win = 1;
  } else if (gameMechanics.buttonText[1] == gameMechanics.buttonText[4] &&
      gameMechanics.buttonText[4] == gameMechanics.buttonText[7] &&
      gameMechanics.buttonText[1] != '') {
    print('entered5');
    if (gameMechanics.buttonText[1] == 'X')
      gameMechanics.win = 0;
    else
      gameMechanics.win = 1;
  } else if (gameMechanics.buttonText[2] == gameMechanics.buttonText[5] &&
      gameMechanics.buttonText[5] == gameMechanics.buttonText[8] &&
      gameMechanics.buttonText[2] != '') {
    print('entered6');
    if (gameMechanics.buttonText[2] == 'X')
      gameMechanics.win = 0;
    else
      gameMechanics.win = 1;
  } else if (gameMechanics.buttonText[0] == gameMechanics.buttonText[4] &&
      gameMechanics.buttonText[4] == gameMechanics.buttonText[8] &&
      gameMechanics.buttonText[0] != '') {
    print('entered7');
    if (gameMechanics.buttonText[0] == 'X')
      gameMechanics.win = 0;
    else
      gameMechanics.win = 1;
  } else if (gameMechanics.buttonText[6] == gameMechanics.buttonText[4] &&
      gameMechanics.buttonText[4] == gameMechanics.buttonText[2] &&
      gameMechanics.buttonText[2] != '') {
    print('entered8');
    if (gameMechanics.buttonText[2] == 'X')
      gameMechanics.win = 0;
    else
      gameMechanics.win = 1;
  } else {
    int full = 0;
    for (int i = 0; i < gameMechanics.buttonText.length; i++) {
      if (gameMechanics.buttonText[i] == '') full++;
    }
    print(full);
    print(gameMechanics.win);
    if (full==0) gameMechanics.win = 2;
    print(gameMechanics.win);
  }
  print(gameMechanics.win);
}

void changePlayer(GameMechanics gameMechanics){
  if(gameMechanics.playerStatus)
    gameMechanics.player='Player 1';
  else
    gameMechanics.player='Player 2';
}