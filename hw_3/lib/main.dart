import 'package:flutter/material.dart';
import 'package:hw_3/food.dart';
import 'package:hw_3/food_catalog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FoodCatalog(foods: [
        Food(name: 'Pancake', description: 'Yummy pancakes that are super tasty!', url: 'https://media.istockphoto.com/photos/breakfast-picture-id494292144?k=20&m=494292144&s=612x612&w=0&h=6BUwYpc-lC5dADTTqfmnvULL2rlGLon6D7LwlT6n-uQ='),
        Food(name: 'Burger', description: 'Burgers are super tasty as well!', url: 'https://media-cldnry.s-nbcnews.com/image/upload/newscms/2019_21/2870431/190524-classic-american-cheeseburger-ew-207p.jpg'),
        Food(name: 'Bao Zi', description: 'The word “bao” in Chinese (包) essentially means bun, so the phrase “bao bun” is not very descriptive. Instead, there is a wide variety of bao types. The one most people think of is called Baozi, a steamed bun with a savory filling, and is the recipe I’ll share today. Other popular types of bao are Cha Shao Bao (barbeque pork bun), Sheng Jian Bao (pork buns that are pan-fried after steaming), Gua Bao (popularized in America by chef David Chang) and Xiao Long Bao (known as soup dumplings in the U.S.).', url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/Baozi_Chengdu.JPG/500px-Baozi_Chengdu.JPG'),
        Food(name: 'Bubble Tea', description: 'Bubble tea (also known as pearl milk tea, bubble milk tea, tapioca milk tea, boba tea, or boba; Chinese: 珍珠奶茶; pinyin: zhēnzhū nǎichá, 波霸奶茶; bōbà nǎichá) is a tea-based drink that originated in Taiwan in the early 1980s.[1][2] Taiwanese immigrants brought it to the United States in the 1990s, initially in California through regions including Los Angeles County,[3] but the drink has also spread to other countries where there is a large East Asian diaspora population.', url: 'https://itotd.com/files/2018/04/6860728548_7dde93f060_o-1392x1392.jpg'),
        Food(name: 'Hot Pot', description: 'Hot pot or hotpot, also known as steamboat, is a dish whereby a heat source placed on the dining table keeps a pot of soup stock simmering, and a variety of Chinese foodstuffs and ingredients are served beside the pot for the diners to put into the hot stock.', url: 'https://lajollamom.com/wp-content/uploads/2017/09/how-to-eat-chinese-hot-pot-2.jpg'),
      ])
    );
  }
}