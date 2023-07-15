import 'package:anime_app/data/categories.dart';
import 'package:anime_app/models/category.dart';
import 'package:anime_app/models/character.dart';
import 'package:flutter/material.dart';

final characters = [
  Character(
    id: 'a',
    category: categories[Categories.onePiece]!,
    name: 'Monkey D. Luffy',
    image: Image.asset(
      'assets/images/avatar/luffy.png',
      fit: BoxFit.contain,
    ),
    background: 'assets/images/background/luffyBack.jpg',
    description:
        'Monkey D. Luffy is the main protagonist of the popular anime series "One Piece." He is a determined and adventurous young pirate who aspires to become the King of the Pirates. Luffy possesses an unwavering spirit, a strong sense of justice, and an insatiable love for adventure. With his iconic straw hat and rubber-like abilities gained from consuming a Devil Fruit, Luffy embarks on an epic journey to find the legendary treasure known as One Piece.',
    list: ['luffy1.jpg', 'luffy2.jpg', 'luffy3.jpg'],
    quote: '"If you don\'t take risks, you can\'t create a future."',
    video: 'assets/videos/luffy.mp4',
  ),
  Character(
    id: 'b',
    category: categories[Categories.naruto]!,
    name: 'Uzumaki Naruto',
    image: Image.asset(
      'assets/images/avatar/naruto.png',
      fit: BoxFit.contain,
    ),
    background: 'assets/images/background/narutoBack.jpg',
    description:
        'Naruto Uzumaki is the main protagonist of the popular anime series "Naruto." He is a spirited and determined ninja from the Hidden Leaf Village. Naruto\'s journey revolves around his pursuit of becoming the strongest ninja and earning the respect of his peers. With his never-give-up attitude, unwavering loyalty, and incredible determination, Naruto strives to protect his loved ones and bring peace to the ninja world.',
    list: ['naruto1.jpg', 'naruto2.jpg', 'naruto3.jpg'],
    quote:
        '"Hard work is worthless for those that don\'t believe in themselves."',
    video: 'assets/videos/Naruto.mp4',
  ),
  Character(
    id: 'c',
    category: categories[Categories.bleach]!,
    name: 'Kurosaki Ichigo',
    image: Image.asset(
      'assets/images/avatar/ichigo.png',
      fit: BoxFit.contain,
    ),
    background: 'assets/images/background/ichigoBack.jpg',
    description:
        'Kurosaki Ichigo is the main protagonist of the popular anime series "Bleach." He is a high school student with the unique ability to see ghosts. Ichigo\'s life takes a dramatic turn when he becomes a Soul Reaper, tasked with protecting the living world from malevolent spirits and guiding the souls of the deceased to the afterlife.',
    list: ['ichigo1.jpg', 'ichigo2.jpeg', 'ichigo3.jpg'],
    quote:
        '"The future is not set in stone. You can change it if you\'re willing to fight for it."',
    video: 'assets/videos/Ichigo.mp4',
  ),
  Character(
    id: 'd',
    category: categories[Categories.dragonBall]!,
    name: 'Vegeta',
    image: Image.asset(
      'assets/images/avatar/vegeta.png',
      fit: BoxFit.contain,
    ),
    background: 'assets/images/background/vegetaBack.jpg',
    description:
        'Vegeta is a complex and iconic character from the anime series "Dragon Ball." Initially introduced as a villain, Vegeta\'s journey takes him from a ruthless Saiyan prince to a formidable ally and defender of Earth. He is known for his intense pride, unwavering determination, and incredible power.',
    list: ['vegeta1.jpg', 'vegeta2.jpg', 'vegeta3.webp'],
    quote:
        '"I do not fear this new challenge. Rather like a true warrior, I will rise to meet it."',
    video: 'assets/videos/Vegeta.mp4',
  ),
  Character(
    id: 'e',
    category: categories[Categories.demonSlayer]!,
    name: 'Tanjirou',
    image: Image.asset('assets/images/avatar/tanjiro.png'),
    background: 'assets/images/background/tanjiroBack.jpg',
    description:
        'Tanjiro Kamado is the main protagonist of the anime series "Demon Slayer: Kimetsu no Yaiba." He is a determined and kind-hearted young boy who becomes a Demon Slayer after his family is brutally attacked by demons. Tanjiro\'s unwavering resolve and compassionate nature drive him to seek revenge against the demons and protect humanity from their threat.',
    list: ['tanjirou1.jpg', 'tanjirou2.jpg', 'tanjirou3.webp'],
    quote:
        '"I may not be the strongest, but I\'ll never give up. I\'ll keep pushing myself to become stronger!"',
    video: 'assets/videos/Tanjirou.mp4',
  ),
  Character(
    id: 'f',
    category: categories[Categories.onePiece]!,
    name: 'Portgas D. Ace',
    image: Image.asset(
      'assets/images/avatar/ace.png',
      fit: BoxFit.contain,
    ),
    background: 'assets/images/background/aceBack.jpg',
    description:
        'Portgas D. Ace, also known as "Fire Fist Ace," is a prominent character from the anime and manga series "One Piece." He is the older brother of Monkey D. Luffy, the main protagonist of the series. Ace is a powerful pirate with the ability to manipulate fire and is known for his indomitable spirit and loyalty to his crew.',
    list: ['ace1.jpg', 'ace2.jpg', 'ace3.jpg'],
    quote:
        '"The only time you should ever look back, is to see how far you\'ve come."',
    video: 'assets/videos/Ace.mp4',
  ),
  Character(
    id: 'g',
    category: categories[Categories.naruto]!,
    name: 'Uchiha Sasuke',
    image: Image.asset('assets/images/avatar/sasuke.png'),
    background: 'assets/images/background/sasukeBack.jpg',
    description:
        'Uchiha Sasuke is a central character from the popular anime and manga series "Naruto." He is a skilled shinobi from the Uchiha clan, known for his exceptional talent, cool demeanor, and complex personality. Sasuke\'s journey is characterized by his pursuit of power, vengeance, and ultimately, redemption.',
    list: ['sasuke1.jpg', 'sasuke2.jpg', 'sasuke3.jpg'],
    quote: '“I Hate A Lot Of Things, And I Don\'t Particularly Like Anything.”',
    video: 'assets/videos/Sasuke.mp4',
  ),
  Character(
    id: 'h',
    category: categories[Categories.bleach]!,
    name: 'Rukia Kuchiki',
    image: Image.asset('assets/images/avatar/rukia.png'),
    background: 'assets/images/background/rukiaBack.png',
    description:
        'Rukia Kuchiki is a prominent character from the popular anime and manga series "Bleach." She is a highly skilled Shinigami (Soul Reaper) and an integral part of the Soul Society. Rukia\'s journey is marked by her dedication to her duties, her complex relationships, and her growth as a warrior.',
    list: ['rukia1.webp', 'rukia2.png', 'rukia3.jpg'],
    quote: '"They say the tongue is the root of all misfortune."',
    video: 'assets/videos/Rukia.mp4',
  ),
  Character(
    id: 'i',
    category: categories[Categories.dragonBall]!,
    name: 'Goku',
    image: Image.asset(
      'assets/images/avatar/goku.png',
      fit: BoxFit.contain,
    ),
    background: 'assets/images/background/gokuBack.jpg',
    description:
        'Goku is the main protagonist of the iconic anime and manga series "Dragon Ball." He is a Saiyan warrior with incredible strength, indomitable spirit, and an insatiable thirst for adventure and fighting strong opponents. Goku\'s journey is filled with epic battles, personal growth, and a quest to protect his loved ones and the universe.',
    list: ['goku1.webp', 'goku2.jpg', 'goku3.jpg'],
    quote: '“Power comes in response to a need, not a desire.”',
    video: 'assets/videos/Goku.mp4',
  ),
  Character(
    id: 'j',
    category: categories[Categories.demonSlayer]!,
    name: 'Rengoku',
    image: Image.asset(
      'assets/images/avatar/rengoku.png',
      fit: BoxFit.contain,
    ),
    background: 'assets/images/background/rengokuBack.jpg',
    description:
        'Rengoku Kyojuro is a prominent character from the anime and manga series "Demon Slayer: Kimetsu no Yaiba." He is a powerful Demon Slayer and serves as the Flame Hashira of the Demon Slayer Corps. Rengoku is known for his unwavering sense of justice, immense strength, and charismatic personality.',
    list: ['rengoku1.jpg', 'rengoku2.jpg', 'rengoku3.png'],
    quote:
        '"Life is a series of decisions. You never have unlimited options. or unlimited time to think, but….. what you choose in that instant defines who you are."',
    video: 'assets/videos/Rengoku.mp4',
  ),
];
