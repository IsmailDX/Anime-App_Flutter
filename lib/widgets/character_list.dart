import 'package:anime_app/data/categories.dart';
import 'package:anime_app/data/dummy_items.dart';
import 'package:anime_app/models/category.dart';
import 'package:anime_app/models/character.dart';
import 'package:anime_app/widgets/character_card.dart';
import 'package:flutter/material.dart';
import 'package:anime_app/screens/character_details.dart';

class CharacterList extends StatefulWidget {
  const CharacterList({super.key});

  @override
  State<CharacterList> createState() {
    return _CharacterListState();
  }
}

class _CharacterListState extends State<CharacterList> {
  late List<Character> filteredCharacters;
  TextEditingController searchController = TextEditingController();
  Category?
      selectedCategory; // Newly added field to store the selected category

  @override
  void initState() {
    filteredCharacters = characters;
    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void filterCharacters(String query) {
    setState(() {
      filteredCharacters = characters
          .where((character) =>
              character.name.toLowerCase().startsWith(query.toLowerCase()) ||
              character.name.toLowerCase().contains(query.toLowerCase()))
          .toList();

      filteredCharacters.sort((a, b) {
        final startsWithA =
            a.name.toLowerCase().startsWith(query.toLowerCase());
        final startsWithB =
            b.name.toLowerCase().startsWith(query.toLowerCase());

        if (startsWithA && !startsWithB) {
          return -1;
        }
        if (!startsWithA && startsWithB) {
          return 1;
        }

        return 0;
      });
    });
  }

  void filterByCategory(Category? category) {
    setState(() {
      selectedCategory = category;
      if (category != null) {
        filteredCharacters = characters
            .where((character) => character.category == category)
            .toList();
      } else {
        filteredCharacters = characters;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anime Characters'),
        actions: [
          PopupMenuButton<Category>(
            onSelected: filterByCategory,
            itemBuilder: (BuildContext context) {
              return categories.values.map((Category category) {
                return PopupMenuItem<Category>(
                  value: category,
                  child: Text(category.title),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              onChanged: filterCharacters,
              decoration: InputDecoration(
                hintText: 'Search by character name',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 20.0,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredCharacters.length,
              itemBuilder: (ctx, index) {
                final character = filteredCharacters[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) =>
                            CharacterDetailScreen(character: character),
                      ),
                    );
                  },
                  child: CharacterCard(
                    character: character,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
