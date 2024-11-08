import 'package:flutter/material.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Planetário'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Seja bem-vindo ao Quiz Planetário!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const QuizPage()),
                );
              },
              child: const Text('Iniciar Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _currentQuestionIndex = 0;
  int _score = 0;

  final List<Map<String, dynamic>> _questions = [
     {
      'question': 'Qual é o planeta mais próximo do sol?',
      'options': [
        {
          'text': 'Terra',
          'image': 'https://thumbs.dreamstime.com/b/desenho-de-desenhos-desenhados-%C3%A0-m%C3%A3o-no-planeta-terra-232229552.jpg',
        },
        {
          'text': 'Vênus',
          'image': 'https://cdn5.colorir.com/desenhos/color/201620/planeta-venus-espaco-1247327.jpg',
        },
        {
          'text': 'Mercúrio',
          'image': 'https://images.vexels.com/content/205473/preview/planet-mercury-illustration-993699.png',
        },
        {
          'text': 'Marte',
          'image': 'https://images.vexels.com/media/users/3/203280/isolated/lists/e4ec0e6c9a425aae4e152ef8b4a0d86a-ilustracao-do-planeta-marte.png',
        },
      ],
      'answer': 2
    },
    {
      'question': 'Qual planeta é conhecido como o "Planeta Vermelho"?',
      'options': [
        {
          'text': 'Vênus',
          'image': 'https://cdn5.colorir.com/desenhos/color/201620/planeta-venus-espaco-1247327.jpg',
        },
        {
          'text': 'Marte',
          'image': 'https://images.vexels.com/media/users/3/203280/isolated/lists/e4ec0e6c9a425aae4e152ef8b4a0d86a-ilustracao-do-planeta-marte.png',
        },
        {
          'text': 'Júpiter',
          'image': 'https://png.pngtree.com/png-clipart/20190630/original/pngtree-cartoon-jupiter-elemental-illustration-png-image_4179122.jpg',
        },
        {
          'text': 'Saturno',
          'image': 'https://images.vexels.com/content/203379/preview/saturn-planet-illustration-664baf.png',
        },
      ],
      'answer': 1
    },
    {
      'question': 'Qual é o maior planeta do Sistema Solar?',
      'options': [
        {
          'text': 'Júpiter',
          'image': 'https://png.pngtree.com/png-clipart/20190630/original/pngtree-cartoon-jupiter-elemental-illustration-png-image_4179122.jpg',
        },
        {
          'text': 'Saturno',
          'image': 'https://images.vexels.com/content/203379/preview/saturn-planet-illustration-664baf.png',
        },
        {
          'text': 'Netuno',
          'image': 'https://images.vexels.com/content/203296/preview/neptune-planet-illustration-a75bbe.png',
        },
        {
          'text': 'Terra',
          'image': 'https://thumbs.dreamstime.com/b/desenho-de-desenhos-desenhados-%C3%A0-m%C3%A3o-no-planeta-terra-232229552.jpg',
        },
      ],
      'answer': 0
    },
    {
      'question': 'Qual planeta tem um sistema de anéis mais proeminente?',
      'options': [
        {
          'text': 'Urano',
          'image': 'https://images.vexels.com/media/users/3/205477/isolated/preview/65bf7bfb23e192debb56168ca3e6e4e0-ilustracao-do-planeta-urano.png',
        },
        {
          'text': 'Netuno',
          'image': 'https://images.vexels.com/content/203296/preview/neptune-planet-illustration-a75bbe.png',
        },
        {
          'text': 'Júpiter',
          'image': 'https://png.pngtree.com/png-clipart/20190630/original/pngtree-cartoon-jupiter-elemental-illustration-png-image_4179122.jpg',
        },
        {
          'text': 'Saturno',
          'image': 'https://images.vexels.com/content/203379/preview/saturn-planet-illustration-664baf.png',
        },
      ],
      'answer': 3
    },
    {
      'question': 'Qual planeta é conhecido por ter uma atmosfera extremamente densa e ácida?',
      'options': [
        {
          'text': 'Terra',
          'image': 'https://thumbs.dreamstime.com/b/desenho-de-desenhos-desenhados-%C3%A0-m%C3%A3o-no-planeta-terra-232229552.jpg',
        },
        {
          'text': 'Marte',
          'image': 'https://images.vexels.com/media/users/3/203280/isolated/lists/e4ec0e6c9a425aae4e152ef8b4a0d86a-ilustracao-do-planeta-marte.png',
        },
        {
          'text': 'Vênus',
          'image': 'https://cdn5.colorir.com/desenhos/color/201620/planeta-venus-espaco-1247327.jpg',
        },
        {
          'text': 'Júpiter',
          'image': 'https://png.pngtree.com/png-clipart/20190630/original/pngtree-cartoon-jupiter-elemental-illustration-png-image_4179122.jpg',
        },
      ],
      'answer': 2
    },
    {
      'question': 'Qual planeta tem o dia mais longo (tempo de rotação mais lento)?',
      'options': [
        {
          'text': 'Júpiter',
          'image': 'https://png.pngtree.com/png-clipart/20190630/original/pngtree-cartoon-jupiter-elemental-illustration-png-image_4179122.jpg',
        },
        {
          'text': 'Marte',
          'image': 'https://images.vexels.com/media/users/3/203280/isolated/lists/e4ec0e6c9a425aae4e152ef8b4a0d86a-ilustracao-do-planeta-marte.png',
        },
        {
          'text': 'Terra',
          'image': 'https://thumbs.dreamstime.com/b/desenho-de-desenhos-desenhados-%C3%A0-m%C3%A3o-no-planeta-terra-232229552.jpg',
        },
        {
          'text': 'Vênus',
          'image': 'https://cdn5.colorir.com/desenhos/color/201620/planeta-venus-espaco-1247327.jpg',
        },
      ],
      'answer': 3
    },
    {
      'question': 'Qual planeta é famoso por ter grandes tempestades, incluindo a "Grande Mancha Vermelha"?',
      'options': [
        {
          'text': 'Saturno',
          'image': 'https://images.vexels.com/content/203379/preview/saturn-planet-illustration-664baf.png',
        },
        {
          'text': 'Netuno',
          'image': 'https://images.vexels.com/content/203296/preview/neptune-planet-illustration-a75bbe.png',
        },
        {
          'text': 'Marte',
          'image': 'https://images.vexels.com/media/users/3/203280/isolated/lists/e4ec0e6c9a425aae4e152ef8b4a0d86a-ilustracao-do-planeta-marte.png',
        },
        {
          'text': 'Júpiter',
          'image': 'https://png.pngtree.com/png-clipart/20190630/original/pngtree-cartoon-jupiter-elemental-illustration-png-image_4179122.jpg',
        },
      ],
      'answer': 3
    },
    {
      'question': 'Qual planeta tem a maior quantidade de água em forma de gelo?',
      'options': [
        {
          'text': 'Marte',
          'image': 'https://images.vexels.com/media/users/3/203280/isolated/lists/e4ec0e6c9a425aae4e152ef8b4a0d86a-ilustracao-do-planeta-marte.png',
        },
        {
          'text': 'Urano',
          'image': 'https://images.vexels.com/media/users/3/205477/isolated/preview/65bf7bfb23e192debb56168ca3e6e4e0-ilustracao-do-planeta-urano.png',
        },
        {
          'text': 'Netuno',
          'image': 'https://images.vexels.com/content/203296/preview/neptune-planet-illustration-a75bbe.png',
        },
        {
          'text': 'Terra',
          'image': 'https://thumbs.dreamstime.com/b/desenho-de-desenhos-desenhados-%C3%A0-m%C3%A3o-no-planeta-terra-232229552.jpg',
        },
      ],
      'answer': 3
    },
    {
      'question': 'Qual planeta é conhecido por seus ventos extremamente fortes, podendo chegar a 2.000 km/h?',
      'options': [
        {
          'text': 'Júpiter',
          'image': 'https://png.pngtree.com/png-clipart/20190630/original/pngtree-cartoon-jupiter-elemental-illustration-png-image_4179122.jpg',
        },
        {
          'text': 'Netuno',
          'image': 'https://images.vexels.com/content/203296/preview/neptune-planet-illustration-a75bbe.png',
        },
        {
          'text': 'Vênus',
          'image': 'https://cdn5.colorir.com/desenhos/color/201620/planeta-venus-espaco-1247327.jpg',
        },
        {
          'text': 'Terra',
          'image': 'https://thumbs.dreamstime.com/b/desenho-de-desenhos-desenhados-%C3%A0-m%C3%A3o-no-planeta-terra-232229552.jpg',
        },
      ],
      'answer': 1
    },
    {
      'question': 'Qual planeta possui a lua chamada "Titã"?',
      'options': [
        {
          'text': 'Terra',
          'image': 'https://thumbs.dreamstime.com/b/desenho-de-desenhos-desenhados-%C3%A0-m%C3%A3o-no-planeta-terra-232229552.jpg',
        },
        {
          'text': 'Netuno',
          'image': 'https://images.vexels.com/content/203296/preview/neptune-planet-illustration-a75bbe.png',
        },
        {
          'text': 'Saturno',
          'image': 'https://images.vexels.com/content/203379/preview/saturn-planet-illustration-664baf.png',
        },
        {
          'text': 'Marte',
          'image': 'https://images.vexels.com/media/users/3/203280/isolated/lists/e4ec0e6c9a425aae4e152ef8b4a0d86a-ilustracao-do-planeta-marte.png',
        },
      ],
      'answer': 2
    },
  ];

  void _answerQuestion(int selectedOption) {
    if (selectedOption == _questions[_currentQuestionIndex]['answer']) {
      _score++;
    }

    setState(() {
      _currentQuestionIndex++;
    });

    if (_currentQuestionIndex >= _questions.length) {
      _showScoreScreen();
    }
  }

  void _showScoreScreen() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => ScoreScreen(
          score: _score,
          totalQuestions: _questions.length,
          onRetry: _resetQuiz,
        ),
      ),
    );
  }

  void _resetQuiz() {
    setState(() {
      _score = 0;
      _currentQuestionIndex = 0;
    });
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz App'),
        centerTitle: true,
      ),
      body: _currentQuestionIndex < _questions.length
          ? _buildQuizQuestion()
          : Container(),
    );
  }

  Widget _buildQuizQuestion() {
    final question = _questions[_currentQuestionIndex];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(
            'https://png.pngtree.com/png-vector/20230503/ourmid/pngtree-quiz-time-bubble-speech-banner-vector-design-png-image_7078139.png',
            height: 150,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 16),
          Text(
            question['question'],
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
          ...List.generate(question['options'].length, (index) {
            final option = question['options'][index];
            return ElevatedButton(
              onPressed: () => _answerQuestion(index),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                children: [
                  Image.network(
                    option['image'],
                    height: 40,
                    width: 40,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      option['text'],
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}

class ScoreScreen extends StatelessWidget {
  final int score;
  final int totalQuestions;
  final VoidCallback onRetry;

  const ScoreScreen({
    super.key,
    required this.score,
    required this.totalQuestions,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultado do Quiz'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://png.pngtree.com/png-vector/20230503/ourmid/pngtree-quiz-time-bubble-speech-banner-vector-design-png-image_7078139.png',
              height: 150,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 16),
            const Text(
              'Parabéns! Você completou o quiz.',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text(
              'Você acertou $score de $totalQuestions perguntas.',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: onRetry,
              child: const Text('Tentar Novamente'),
            ),
          ],
        ),
      ),
    );
  }
}
