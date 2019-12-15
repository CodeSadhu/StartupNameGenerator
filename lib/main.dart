import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
	// This widget is the root of your application.
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			debugShowCheckedModeBanner: false,
			title: 'Welcome to Flutter!',
			home: Scaffold(
				appBar: AppBar(
					title: Text('Welcome to Flutter!'),
				),
				body: Center(
					child: RandomWords(),
				),
			),
		);
	}
}

class RandomWordsState extends State<RandomWords> {
	@override
		Widget build(BuildContext context) {
<<<<<<< Updated upstream
			// TODO: implement build
			final wordPair = WordPair.random();
			return Text(wordPair.asPascalCase);
=======
			final List<WordPair> _suggest = <WordPair>[];
			final Set<WordPair> _saved = Set<WordPair>();
			final TextStyle _biggerFont = TextStyle(fontSize: 18.0);

			Widget _buildRow(WordPair pair) {

				final bool alreadySaved = _saved.contains(pair);

				return ListTile(
					title: Text(
						pair.asPascalCase,
						style: _biggerFont,
						),
						trailing: Icon(
							alreadySaved ? Icons.favorite : Icons.favorite_border,
							color: alreadySaved ? Colors.red: null,
						),
				);
			}

			Widget _buildSuggestions() {
				return ListView.builder(
					padding: const EdgeInsets.all(16.0),
					itemBuilder: (context, i) {
						if (i.isOdd) return Divider();

						final index = i ~/2;	//return i/2 and convert to integer. For eg. 3/2 = 1
						if (index >= _suggest.length) {
							_suggest.addAll(generateWordPairs().take(10));
						}
						return _buildRow(_suggest[index]);
					});
			}

			return Scaffold(
				appBar: AppBar(
					title: Text('Startup Name Generator'),
				),
				body: _buildSuggestions(),
			);
>>>>>>> Stashed changes
		}
}

class RandomWords extends StatefulWidget {
	@override
	RandomWordsState createState() => RandomWordsState();
}