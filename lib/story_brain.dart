import 'story.dart';

class StoryBrain {

  List<Story> _storyData = [
    Story(
        'Seu carro estourou um pneu numa estrada sinuosa, no meio do nada, sem sinal de celular. Você decidiu procurar carona. Você ouve o barulho de uma caminhonete velha para próxima de você. Um homem com um chapelão e olhos assombrosos abre a porta do carona para você e pergunta: "Precisa de uma carona, garoto?".',
        'Eu vou aceitar. Agradeço a ajuda!',
        'É melhor perguntar antes se ele é um assassino.'),
    Story(
        'Ele assente vagarosamente, sem se incomodar com a pergunta.',
        'Pelo menos ele é honesto. Eu vou aceitar.',
        'Espera, eu sei trocar um pneu.'),
    Story(
        'Assim que você começa a dirigir, o estranho começa a falar sobre o relacionamento dele com a mãe. Ele fica cada vez mais bravo. Ele pede que você abra o porta-luvas. Dentro, você vê uma faca ensanguentada, dois dedos cortados e uma fita K7 do Elton John. Ele se estica para o porta-luvas.',
        'Eu adoro Elton John! Entregue a ele a fita K7.',
        'Sou eu ou ele! Você pega a faca o esfaqueia.'),
    Story(
        'O que? Que desculpa esfarrapada! Você sabia que acidentes de trânsito são a segunda causa de morte acidental para a maioria dos adultos?',
        'Recomeçar',
        ''),
    Story(
        'Conforme você se arrasta pelo guardrail e se inclina na direção das rochas abaixo, você pensa na sabedoria duvidosa de esfaquear alguém enquanto ele dirigia o carro no qual você está.',
        'Recomeçar',
        ''),
    Story(
        'Você se conecta com o assassino, enquanto cantarola versos de "Can you feel the love tonight". Ele te deixa na próxima cidade. Antes de partir, ele pergunta se você conhece algum lugar adequado para largar corpos. Você responde: "Tente o pier".',
        'Recomeçar',
        '')
  ];

  int _currentStory = 0;

  void nextStory(int choice) {
    if (_currentStory == 0) {
      if (choice == 1) {
        _currentStory = 2;
      } else {
        _currentStory = 1;
      }
    } else if (_currentStory == 1) {
      if (choice == 1) {
        _currentStory = 2;
      } else {
        _currentStory = 3;
      }
    } else if (_currentStory == 2) {
      if (choice == 1) {
        _currentStory = 5;
      } else {
        _currentStory = 4;
      }
    } else {
      restart();
    }
  }

  void restart() {
    _currentStory = 0;
  }

  String getStory() {
    return _storyData[_currentStory].storyTitle;
  }

  String getChoice1() {
    return _storyData[_currentStory].choice1;
  }

  String getChoice2() {
    return _storyData[_currentStory].choice2;
  }

  bool isChoice2Avaliable() {
    if(_currentStory < 3) {
      return true;
    } else {
      return false;
    }
  }
}

