import 'package:flutter/material.dart';
import '../models/game_model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Game> games = [
    Game(
      name: 'Awesome Game 1',
      description: 'An amazing adventure game.',
      iconUrl: 'https://picsum.photos/seed/game1/200',
      downloadUrl: 'https://example.com/game1',
    ),
    Game(
      name: 'Super Racer',
      description: 'A high-speed racing game.',
      iconUrl: 'https://picsum.photos/seed/game2/200',
      downloadUrl: 'https://example.com/game2',
    ),
    Game(
      name: 'Puzzle Master',
      description: 'Challenge your brain with these puzzles.',
      iconUrl: 'https://picsum.photos/seed/game3/200',
      downloadUrl: 'https://example.com/game3',
    ),
    Game(
      name: 'Galaxy Shooter',
      description: 'Save the galaxy from alien invaders.',
      iconUrl: 'https://picsum.photos/seed/game4/200',
      downloadUrl: 'https://example.com/game4',
    ),
     Game(
      name: 'Fantasy RPG',
      description: 'Embark on an epic role-playing adventure.',
      iconUrl: 'https://picsum.photos/seed/game5/200',
      downloadUrl: 'https://example.com/game5',
    ),
    Game(
      name: 'Sports Pro',
      description: 'Compete in various sports.',
      iconUrl: 'https://picsum.photos/seed/game6/200',
      downloadUrl: 'https://example.com/game6',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Game Store'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: ListView.builder(
        itemCount: games.length,
        itemBuilder: (context, index) {
          final game = games[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  game.iconUrl,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(game.name, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(game.description),
              trailing: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Downloading ${game.name}...')),
                  );
                },
                child: const Text('Install'),
              ),
            ),
          );
        },
      ),
    );
  }
}
