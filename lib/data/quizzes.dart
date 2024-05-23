import 'package:trail_poland/models/models.dart';

final List<Quiz> quizzes = [
  Quiz(
    id: 0,
    name: 'Lendmarks',
    image: 'assets/images/quizzes/lendmarks.png',
    questions: [
      const Question(
        id: 0,
        question:
            "What is the name of the famous medieval castle located in Krakow, Poland?",
        answers: [
          Answer(answer: "Warsaw Castle"),
          Answer(answer: "Wawel Castle", right: true),
          Answer(answer: "Malbork Castle"),
          Answer(answer: "Czocha Castle"),
        ],
      ),
      const Question(
        id: 1,
        question:
            "Which Polish city is known for its beautiful Old Town Square and Market Hall?",
        answers: [
          Answer(answer: "Gdansk"),
          Answer(answer: "Warsaw"),
          Answer(answer: "Poznan", right: true),
          Answer(answer: "Wroclaw"),
        ],
      ),
      const Question(
        id: 2,
        question:
            "The largest castle in the world by land area, located in Poland, is called:",
        answers: [
          Answer(answer: "Malbork Castle", right: true),
          Answer(answer: "Wawel Castle"),
          Answer(answer: "Ksiaz Castle"),
          Answer(answer: "Czocha Castle"),
        ],
      ),
      const Question(
        id: 3,
        question:
            "Which city in Poland is famous for its historic salt mine that has been turned into an underground museum?",
        answers: [
          Answer(answer: "Zakopane"),
          Answer(answer: "Warsaw"),
          Answer(answer: "Wroclaw"),
          Answer(answer: "Wieliczka", right: true),
        ],
      ),
      const Question(
        id: 4,
        question:
            "What is the name of the large square in Warsaw, often referred to as the heart of the city?",
        answers: [
          Answer(answer: "Wawel Square"),
          Answer(answer: "Pilsudski Square", right: true),
          Answer(answer: "Old Town Square"),
          Answer(answer: "Castle Square"),
        ],
      ),
      const Question(
        id: 5,
        question:
            "The Bialowieza Forest, a UNESCO World Heritage Site, is famous for being the last and largest primeval forest in Europe. It is located on the border of Poland and which other country?",
        answers: [
          Answer(answer: "Slovakia"),
          Answer(answer: "Ukraine"),
          Answer(answer: "Belarus", right: true),
          Answer(answer: "Lithuania"),
        ],
      ),
      const Question(
        id: 6,
        question:
            "Which Polish city is known for its beautiful Market Square and the famous St. Mary's Basilica?",
        answers: [
          Answer(answer: "Gdansk"),
          Answer(answer: "Krakow", right: true),
          Answer(answer: "Warsaw"),
          Answer(answer: "Lublin"),
        ],
      ),
      const Question(
        id: 7,
        question:
            "The Royal Castle is a historic landmark located in which Polish city?",
        answers: [
          Answer(answer: "Gdansk"),
          Answer(answer: "Warsaw", right: true),
          Answer(answer: "Wroclaw"),
          Answer(answer: "Lublin"),
        ],
      ),
      const Question(
        id: 8,
        question:
            "In which city can you find the Jasna Gora Monastery, a significant pilgrimage destination in Poland?",
        answers: [
          Answer(answer: "Gdansk"),
          Answer(answer: "Krakow"),
          Answer(answer: "Czestochowa", right: true),
          Answer(answer: "Poznan"),
        ],
      ),
      const Question(
        id: 9,
        question:
            "The Tatras Mountains, a popular destination for hikers and skiers, are part of which mountain range in Poland?",
        answers: [
          Answer(answer: "Carpathian Mountains", right: true),
          Answer(answer: "Sudetes Mountains"),
          Answer(answer: "Bieszczady Mountains"),
          Answer(answer: "Pieniny Mountains"),
        ],
      ),
      const Question(
        id: 10,
        question:
            "What is the name of the large park located in the center of Warsaw, often called the \"Polish Versailles\"?",
        answers: [
          Answer(answer: "Saxon Garden"),
          Answer(answer: "Wilanow Palace Park"),
          Answer(answer: "Lazienki Park", right: true),
          Answer(answer: "Ujazdowski Park"),
        ],
      ),
      const Question(
        id: 11,
        question:
            "The Old Town of this city is a UNESCO World Heritage Site and is known for its unique Gothic and Renaissance architecture. Which city is it?",
        answers: [
          Answer(answer: "Wroclaw"),
          Answer(answer: "Poznan"),
          Answer(answer: "Lublin"),
          Answer(answer: "Torun", right: true),
        ],
      ),
      const Question(
        id: 12,
        question:
            "Which Polish city is famous for its well-preserved medieval city walls and fortifications?",
        answers: [
          Answer(answer: "Krakow"),
          Answer(answer: "Warsaw"),
          Answer(answer: "Gdansk", right: true),
          Answer(answer: "Lublin"),
        ],
      ),
      const Question(
        id: 13,
        question:
            "The main building of this Polish university is a UNESCO World Heritage Site and is known for its beautiful baroque architecture. Which university is it?",
        answers: [
          Answer(answer: "University of Wroclaw"),
          Answer(answer: "Jagiellonian University", right: true),
          Answer(answer: "University of Warsaw"),
          Answer(answer: "Adam Mickiewicz University"),
        ],
      ),
      const Question(
        id: 14,
        question:
            "The Crooked Forest, a mysterious grove of pine trees with bent trunks, is located in which region of Poland?",
        answers: [
          Answer(answer: "Pomerania", right: true),
          Answer(answer: "Masuria"),
          Answer(answer: "Warmia"),
          Answer(answer: "West Pomerania"),
        ],
      ),
      const Question(
        id: 15,
        question:
            "The Black Madonna of Czestochowa is a revered icon located in which place in Poland?",
        answers: [
          Answer(answer: "Wawel Cathedral"),
          Answer(answer: "St. Mary's Basilica"),
          Answer(answer: "Jasna Gora Monastery", right: true),
          Answer(answer: "Lublin Castle"),
        ],
      ),
      const Question(
        id: 16,
        question:
            "The Copernicus Science Centre is a popular attraction located in which Polish city?",
        answers: [
          Answer(answer: "Krakow"),
          Answer(answer: "Gdansk"),
          Answer(answer: "Warsaw", right: true),
          Answer(answer: "Poznan"),
        ],
      ),
      const Question(
        id: 17,
        question:
            "Which river flows through the city of Wroclaw, known for its picturesque islands and bridges?",
        answers: [
          Answer(answer: "Vistula River"),
          Answer(answer: "Oder River", right: true),
          Answer(answer: "Wisloka River"),
          Answer(answer: "Nysa Kłodzka River"),
        ],
      ),
      const Question(
        id: 18,
        question:
            "The Gubalowka Mountain, offering stunning views of the Tatra Mountains, is near which Polish town?",
        answers: [
          Answer(answer: "Zakopane", right: true),
          Answer(answer: "Karpacz"),
          Answer(answer: "Krynica-Zdroj"),
          Answer(answer: "Szczawnica"),
        ],
      ),
      const Question(
        id: 19,
        question:
            "The Palace of Culture and Science, an iconic building in Poland, is located in which city?",
        answers: [
          Answer(answer: "Warsaw", right: true),
          Answer(answer: "Krakow"),
          Answer(answer: "Gdansk"),
          Answer(answer: "Poznan"),
        ],
      ),
    ],
  ),
  Quiz(
    id: 1,
    name: 'Cuisine',
    image: 'assets/images/quizzes/cuisine.png',
    questions: [
      const Question(
        id: 0,
        question: "What is the traditional Polish dumpling called?",
        answers: [
          Answer(answer: "Croissant"),
          Answer(answer: "Pierogi", right: true),
          Answer(answer: "Pretzel"),
          Answer(answer: "Pancake"),
        ],
      ),
      const Question(
        id: 1,
        question:
            "Which popular Polish soup is made from sour rye flour and served with sausage and a hard-boiled egg?",
        answers: [
          Answer(answer: "Barszcz"),
          Answer(answer: "Zurek", right: true),
          Answer(answer: "Rosol"),
          Answer(answer: "Borscht"),
        ],
      ),
      const Question(
        id: 2,
        question:
            "What is the name of the Polish dish that consists of pork knuckle, often roasted until crispy?",
        answers: [
          Answer(answer: "Bigos"),
          Answer(answer: "Kielbasa"),
          Answer(answer: "Golonka", right: true),
          Answer(answer: "Karkowka"),
        ],
      ),
      const Question(
        id: 3,
        question:
            "Which Polish dish is made from fermented cabbage and often served as a side dish?",
        answers: [
          Answer(answer: "Placki ziemniaczane"),
          Answer(answer: "Kielbasa"),
          Answer(answer: "Kapusta kiszona", right: true),
          Answer(answer: "Bigos"),
        ],
      ),
      const Question(
        id: 4,
        question:
            "What type of sausage is a staple in Polish cuisine and comes in various flavors, including kielbasa kabanos and kielbasa krakowska?",
        answers: [
          Answer(answer: "Bratwurst"),
          Answer(answer: "Chorizo"),
          Answer(answer: "Salami"),
          Answer(answer: "Kielbasa", right: true),
        ],
      ),
      const Question(
        id: 5,
        question:
            "What is the traditional Polish hunter's stew made from sauerkraut, fresh cabbage, and various types of meat?",
        answers: [
          Answer(answer: "Bigos", right: true),
          Answer(answer: "Barszcz"),
          Answer(answer: "Rosol"),
          Answer(answer: "Zurek"),
        ],
      ),
      const Question(
        id: 6,
        question:
            "What popular Polish pastry is a round, filled doughnut often coated in powdered sugar?",
        answers: [
          Answer(answer: "Chrusciki"),
          Answer(answer: "Pączki", right: true),
          Answer(answer: "Babka"),
          Answer(answer: "Makowiec"),
        ],
      ),
      const Question(
        id: 7,
        question:
            "Which Polish dessert is a sweet yeast cake often baked with raisins and a crumbly topping?",
        answers: [
          Answer(answer: "Babka", right: true),
          Answer(answer: "Makowiec"),
          Answer(answer: "Sernik"),
          Answer(answer: "Piernik"),
        ],
      ),
      const Question(
        id: 8,
        question:
            "What is the name of the traditional Polish cheese often served with fruit preserves or honey?",
        answers: [
          Answer(answer: "Kefir"),
          Answer(answer: "Twarog", right: true),
          Answer(answer: "Bryndza"),
          Answer(answer: "Feta"),
        ],
      ),
      const Question(
        id: 9,
        question:
            "What Polish dish consists of breaded and fried pork or veal cutlets?",
        answers: [
          Answer(answer: "Schabowy"),
          Answer(answer: "Kotlet schabowy", right: true),
          Answer(answer: "Placki ziemniaczane"),
          Answer(answer: "Barszcz"),
        ],
      ),
      const Question(
        id: 10,
        question:
            "Which Polish dish is a type of potato pancake, often served with sour cream or applesauce?",
        answers: [
          Answer(answer: "Nalesniki"),
          Answer(answer: "Pierogi"),
          Answer(answer: "Kotlet schabowy"),
          Answer(answer: "Placki ziemniaczane", right: true),
        ],
      ),
      const Question(
        id: 11,
        question:
            "What is the Polish word for cabbage rolls, typically filled with a mixture of meat and rice, served with tomato or mushroom sauce?",
        answers: [
          Answer(answer: "Cabbage Pierogi"),
          Answer(answer: "Golabki", right: true),
          Answer(answer: "Kielbasa"),
          Answer(answer: "Bigos"),
        ],
      ),
      const Question(
        id: 12,
        question:
            "What is the name of the Polish vodka, often served chilled and in small glasses?",
        answers: [
          Answer(answer: "Tequila"),
          Answer(answer: "Vodka", right: true),
          Answer(answer: "Rakia"),
          Answer(answer: "Slivovitz"),
        ],
      ),
      const Question(
        id: 13,
        question:
            "What traditional Polish dish is made from a mixture of sauerkraut and fresh cabbage, often with mushrooms and sausage?",
        answers: [
          Answer(answer: "Barszcz"),
          Answer(answer: "Bigos", right: true),
          Answer(answer: "Kielbasa"),
          Answer(answer: "Zurek"),
        ],
      ),
      const Question(
        id: 14,
        question:
            "What Polish pastry is a sweet yeast cake often filled with poppy seeds or sweet cheese?",
        answers: [
          Answer(answer: "Babka"),
          Answer(answer: "Makowiec", right: true),
          Answer(answer: "Sernik"),
          Answer(answer: "Piernik"),
        ],
      ),
      const Question(
        id: 15,
        question:
            "What is the name of the Polish breaded and fried fish dish, often served with lemon and potatoes?",
        answers: [
          Answer(answer: "Kotlet schabowy"),
          Answer(answer: "Barszcz"),
          Answer(answer: "Kielbasa"),
          Answer(answer: "Ryba po grecku", right: true),
        ],
      ),
      const Question(
        id: 16,
        question:
            "Which Polish dish is a traditional Christmas cake made from honey, spices, and filled with nuts and dried fruits?",
        answers: [
          Answer(answer: "Sernik"),
          Answer(answer: "Piernik", right: true),
          Answer(answer: "Babka"),
          Answer(answer: "Makowiec"),
        ],
      ),
      const Question(
        id: 17,
        question:
            "What is the name of the Polish sour rye soup, often served with sausage and potatoes?",
        answers: [
          Answer(answer: "Barszcz"),
          Answer(answer: "Zurek", right: true),
          Answer(answer: "Rosol"),
          Answer(answer: "Borscht"),
        ],
      ),
      const Question(
        id: 18,
        question:
            "Which Polish dessert is a cheesecake often made with cream cheese or quark cheese?",
        answers: [
          Answer(answer: "Makowiec"),
          Answer(answer: "Babka"),
          Answer(answer: "Sernik", right: true),
          Answer(answer: "Piernik"),
        ],
      ),
      const Question(
        id: 19,
        question:
            "What is the name of the traditional Polish beet soup, often served with sour cream and potatoes?",
        answers: [
          Answer(answer: "Rosol"),
          Answer(answer: "Barszcz", right: true),
          Answer(answer: "Borscht"),
          Answer(answer: "Zurek"),
        ],
      ),
    ],
  ),
  Quiz(
    id: 2,
    name: 'History',
    image: 'assets/images/quizzes/history.png',
    questions: [
      const Question(
        id: 0,
        question:
            "Who was the first ruler to adopt the title \"King of Poland\" in the 14th century?",
        answers: [
          Answer(answer: "Mieszko I"),
          Answer(answer: "Casimir III", right: true),
          Answer(answer: "Boleslaus the Brave"),
          Answer(answer: "Władysław Jagiełło"),
        ],
      ),
      const Question(
        id: 1,
        question:
            "Which battle in 1410 is considered one of the most significant in Polish history, resulting in a decisive victory over the Teutonic Knights?",
        answers: [
          Answer(answer: "Battle of Grunwald", right: true),
          Answer(answer: "Battle of Tannenberg"),
          Answer(answer: "Battle of Warsaw"),
          Answer(answer: "Battle of Legnica"),
        ],
      ),
      const Question(
        id: 2,
        question:
            "Who was the famous Polish astronomer and mathematician known for his heliocentric model of the solar system?",
        answers: [
          Answer(answer: "Copernicus", right: true),
          Answer(answer: "Galileo"),
          Answer(answer: "Kepler"),
          Answer(answer: "Newton"),
        ],
      ),
      const Question(
        id: 3,
        question:
            "What was the Polish-Lithuanian Commonwealth, one of the largest and most populous countries in Europe during the 16th and 17th centuries?",
        answers: [
          Answer(answer: "A monarchy"),
          Answer(answer: "A federation", right: true),
          Answer(answer: "A theocracy"),
          Answer(answer: "An empire"),
        ],
      ),
      const Question(
        id: 4,
        question:
            "Which Polish queen is known for her support of the Enlightenment and for being the last ruler of the Polish-Lithuanian Commonwealth?",
        answers: [
          Answer(answer: "Catherine the Great"),
          Answer(answer: "Maria Theresa"),
          Answer(answer: "Isabella Jagiellon"),
          Answer(answer: "Stanisław August Poniatowski", right: true),
        ],
      ),
      const Question(
        id: 5,
        question:
            "The Partitions of Poland in the late 18th century resulted in the country being divided among which three neighboring powers?",
        answers: [
          Answer(answer: "Russia, Germany, Austria", right: true),
          Answer(answer: "France, Prussia, Austria"),
          Answer(answer: "Sweden, Hungary, Turkey"),
          Answer(answer: "England, Spain, Portugal"),
        ],
      ),
      const Question(
        id: 6,
        question:
            "What was the name of the 1791 document that established Europe's first modern written national constitution, adopted by the Polish-Lithuanian Commonwealth?",
        answers: [
          Answer(answer: "Constitution of May 3rd", right: true),
          Answer(answer: "Magna Carta"),
          Answer(answer: "Declaration of the Rights of Man and of the Citizen"),
          Answer(answer: "U.S. Constitution"),
        ],
      ),
      const Question(
        id: 7,
        question:
            "During World War II, which Polish city was the site of a heroic and ultimately unsuccessful uprising against Nazi occupation in 1944?",
        answers: [
          Answer(answer: "Warsaw", right: true),
          Answer(answer: "Krakow"),
          Answer(answer: "Gdansk"),
          Answer(answer: "Poznan"),
        ],
      ),
      const Question(
        id: 8,
        question:
            "What was the name of the Polish diplomat and resistance leader who helped save thousands of Polish Jews during the Holocaust?",
        answers: [
          Answer(answer: "Tadeusz Pankiewicz"),
          Answer(answer: "Jan Karski", right: true),
          Answer(answer: "Irena Sendler"),
          Answer(answer: "Witold Pilecki"),
        ],
      ),
      const Question(
        id: 9,
        question:
            "Which famous Polish-born scientist and two-time Nobel laureate conducted pioneering research on radioactivity?",
        answers: [
          Answer(answer: "Marie Curie", right: true),
          Answer(answer: "Nicolas Copernicus"),
          Answer(answer: "Lech Walesa"),
          Answer(answer: "Jerzy Neyman"),
        ],
      ),
      const Question(
        id: 10,
        question:
            "What was the name of the independent labor union founded in 1980 in Poland that played a key role in the eventual downfall of communism in Eastern Europe?",
        answers: [
          Answer(answer: "Solidarity", right: true),
          Answer(answer: "Glasnost"),
          Answer(answer: "Warsaw Pact"),
          Answer(answer: "Velvet Revolution"),
        ],
      ),
      const Question(
        id: 11,
        question:
            "Which Pope, of Polish descent, served as the head of the Roman Catholic Church from 1978 to 2005?",
        answers: [
          Answer(answer: "Pope Benedict XVI"),
          Answer(answer: "Pope Francis"),
          Answer(answer: "Pope John Paul II", right: true),
          Answer(answer: "Pope Paul VI"),
        ],
      ),
      const Question(
        id: 12,
        question:
            "In 1999, Poland joined which military alliance, a mutual defense organization, along with many other European countries?",
        answers: [
          Answer(answer: "United Nations"),
          Answer(answer: "NATO", right: true),
          Answer(answer: "Warsaw Pact"),
          Answer(answer: "European Union"),
        ],
      ),
      const Question(
        id: 13,
        question:
            "Which historical figure is often considered the \"father of the Polish state\" for his role in Christianizing and unifying the early Polish tribes in the 10th century?",
        answers: [
          Answer(answer: "Lech"),
          Answer(answer: "Boleslaus the Brave"),
          Answer(answer: "Kazimierz the Great"),
          Answer(answer: "Mieszko I", right: true),
        ],
      ),
      const Question(
        id: 14,
        question:
            "During the Cold War, Poland was part of the Eastern Bloc, led by the Soviet Union. What was the official ideology of the Eastern Bloc?",
        answers: [
          Answer(answer: "Capitalism"),
          Answer(answer: "Communism", right: true),
          Answer(answer: "Fascism"),
          Answer(answer: "Monarchism"),
        ],
      ),
      const Question(
        id: 15,
        question:
            "Which Polish general and military commander became a national hero for his leadership during the Polish-Soviet War of 1920?",
        answers: [
          Answer(answer: "Wladyslaw Anders"),
          Answer(answer: "Tadeusz Kosciuszko"),
          Answer(answer: "Jozef Pilsudski", right: true),
          Answer(answer: "Ignacy Paderewski"),
        ],
      ),
      const Question(
        id: 16,
        question:
            "What is the name of the shipyard in Gdansk where the Solidarity movement originated and later played a crucial role in Poland's transition to democracy?",
        answers: [
          Answer(answer: "Lenin Shipyard"),
          Answer(answer: "Gdansk Shipyard", right: true),
          Answer(answer: "Baltic Shipyard"),
          Answer(answer: "Solidarity Shipyard"),
        ],
      ),
      const Question(
        id: 17,
        question:
            "Which medieval Polish king is known for granting the Statute of Kalisz in 1264, one of the earliest documents of its kind promoting religious tolerance and the rights of Jews in Europe?",
        answers: [
          Answer(answer: "Casimir III", right: true),
          Answer(answer: "Boleslaus the Brave"),
          Answer(answer: "Mieszko I"),
          Answer(answer: "Wladyslaw Jagiełło"),
        ],
      ),
      const Question(
        id: 18,
        question:
            "In 2011, Poland adopted the official currency of the European Union. What is the name of this currency?",
        answers: [
          Answer(answer: "Euro", right: true),
          Answer(answer: "Zloty"),
          Answer(answer: "Hryvnia"),
          Answer(answer: "Koruna"),
        ],
      ),
      const Question(
        id: 19,
        question:
            "What is the name of the Polish resistance movement that operated during World War II, opposing both Nazi occupation and Soviet influence?",
        answers: [
          Answer(answer: "Home Army (Armia Krajowa)", right: true),
          Answer(answer: "Red Army (Armia Czerwona)"),
          Answer(answer: "People's Army (Armia Ludowa)"),
          Answer(answer: "National Army (Armia Narodowa)"),
        ],
      ),
    ],
  ),
  Quiz(
    id: 3,
    name: 'Natural Wonder',
    image: 'assets/images/quizzes/natural_wonder.png',
    questions: [
      const Question(
        id: 0,
        question:
            "What is the name of the unique mountain range in Poland known for its limestone rock formations and underground caves?",
        answers: [
          Answer(answer: "Tatra Mountains"),
          Answer(answer: "Bieszczady Mountains"),
          Answer(answer: "Sudetes Mountains", right: true),
          Answer(answer: "Tatra Mountains"),
        ],
      ),
      const Question(
        id: 1,
        question:
            "Which river forms the famous Dunajec Gorge, a picturesque natural wonder in Poland often explored by rafting?",
        answers: [
          Answer(answer: "Oder River"),
          Answer(answer: "Wisła River"),
          Answer(answer: "Dunajec River", right: true),
          Answer(answer: "Vistula River"),
        ],
      ),
      const Question(
        id: 2,
        question:
            "Which Polish national park, known for its pristine lakes and lush forests, is often called the \"Green Lungs of Poland\"?",
        answers: [
          Answer(answer: "Tatra National Park"),
          Answer(answer: "Bialowieza Forest"),
          Answer(answer: "Bieszczady National Park"),
          Answer(answer: "Bory Tucholskie National Park", right: true),
        ],
      ),
      const Question(
        id: 3,
        question:
            "In which region of Poland can you find the Bialowieza Forest, home to the European bison and a UNESCO World Heritage Site?",
        answers: [
          Answer(answer: "Lesser Poland"),
          Answer(answer: "Lubusz"),
          Answer(answer: "Masovia"),
          Answer(answer: "Podlaskie", right: true),
        ],
      ),
      const Question(
        id: 4,
        question:
            "What is the name of the largest sand dunes area in Poland, located on the coast of the Baltic Sea?",
        answers: [
          Answer(answer: "Slowinski Sand Dunes", right: true),
          Answer(answer: "Tuchola Forest"),
          Answer(answer: "Kampinos National Park"),
          Answer(answer: "Pomeranian Lakeland"),
        ],
      ),
      const Question(
        id: 5,
        question:
            "The Wieliczka Salt Mine, a UNESCO World Heritage Site, is known for its underground chambers, chapels, and sculptures carved out of salt. In which Polish region is it located?",
        answers: [
          Answer(answer: "Lesser Poland", right: true),
          Answer(answer: "Silesia"),
          Answer(answer: "Lubusz"),
          Answer(answer: "Lublin"),
        ],
      ),
      const Question(
        id: 6,
        question:
            "The Tatra Mountains, a popular destination for hikers and skiers, are part of which mountain range in Poland?",
        answers: [
          Answer(answer: "Carpathian Mountains"),
          Answer(answer: "Sudetes Mountains"),
          Answer(answer: "Bieszczady Mountains"),
          Answer(answer: "Pieniny Mountains"),
        ],
      ),
      const Question(
        id: 7,
        question:
            "What is the name of the Polish lake district, known for its stunning landscape with numerous lakes, rivers, and forests?",
        answers: [
          Answer(answer: "Tatra Lakes"),
          Answer(answer: "Bialowieza Lakes"),
          Answer(answer: "Masurian Lakes", right: true),
          Answer(answer: "Carpathian Lakes"),
        ],
      ),
      const Question(
        id: 8,
        question:
            "The Bledowska Desert, the largest sand desert in Poland, is located in which region of the country?",
        answers: [
          Answer(answer: "Lubusz"),
          Answer(answer: "Silesia", right: true),
          Answer(answer: "Lesser Poland"),
          Answer(answer: "Lublin"),
        ],
      ),
      const Question(
        id: 9,
        question:
            "What is the name of the unique rock formation in the Sudetes Mountains that resembles a series of stone pillars?",
        answers: [
          Answer(answer: "Bialowieza Pillars"),
          Answer(answer: "Tatra Towers"),
          Answer(answer: "Stolowe Mountains", right: true),
          Answer(answer: "Szczeliniec Wielki"),
        ],
      ),
      const Question(
        id: 10,
        question:
            "The Krucze Mountains, known for their jagged peaks and cliffs, are part of which larger mountain range in Poland?",
        answers: [
          Answer(answer: "Sudetes Mountains", right: true),
          Answer(answer: "Bieszczady Mountains"),
          Answer(answer: "Tatra Mountains"),
          Answer(answer: "Pieniny Mountains"),
        ],
      ),
      const Question(
        id: 11,
        question:
            "What is the name of the limestone cave complex in Poland, famous for its stunning stalactites and underground chambers?",
        answers: [
          Answer(answer: "Ojcowski Caves", right: true),
          Answer(answer: "Jaskinia Niedźwiedzia"),
          Answer(answer: "Wieliczka Salt Mine"),
          Answer(answer: "Demänovská Cave of Liberty"),
        ],
      ),
      const Question(
        id: 12,
        question:
            "The Bieszczady Mountains, located in the southeastern part of Poland, are known for their unspoiled wilderness and unique flora and fauna. Which national park is found in this region?",
        answers: [
          Answer(answer: "Tatra National Park"),
          Answer(answer: "Bialowieza National Park"),
          Answer(answer: "Bieszczady National Park", right: true),
          Answer(answer: "Slowinski National Park"),
        ],
      ),
      const Question(
        id: 13,
        question:
            "What is the name of the river that flows through the Pieniny Mountains, forming the Dunajec Gorge?",
        answers: [
          Answer(answer: "Oder River"),
          Answer(answer: "Vistula River"),
          Answer(answer: "Dunajec River", right: true),
          Answer(answer: "Wisła River"),
        ],
      ),
      const Question(
        id: 14,
        question:
            "The Giant Mountains (Karkonosze) in southwestern Poland are known for their highest peak, Sniezka. Which larger mountain range are they a part of?",
        answers: [
          Answer(answer: "Sudetes Mountains", right: true),
          Answer(answer: "Bieszczady Mountains"),
          Answer(answer: "Carpathian Mountains"),
          Answer(answer: "Tatra Mountains"),
        ],
      ),
      const Question(
        id: 15,
        question:
            "Which national park in Poland, often called the \"Polish Amazon,\" is known for its extensive marshes, rivers, and abundant birdlife?",
        answers: [
          Answer(answer: "Bialowieza National Park"),
          Answer(answer: "Bory Tucholskie National Park"),
          Answer(answer: "Kampinos National Park"),
          Answer(answer: "Biebrza National Park", right: true),
        ],
      ),
      const Question(
        id: 16,
        question:
            "What is the name of the waterfall in the Tatra Mountains, known for its picturesque setting and the largest waterfall in Poland?",
        answers: [
          Answer(answer: "Karkonosze Falls"),
          Answer(answer: "Siklawa", right: true),
          Answer(answer: "Wodogrzmoty Mickiewicza"),
          Answer(answer: "Morskie Oko"),
        ],
      ),
      const Question(
        id: 17,
        question:
            "The Pieniny Mountains, a natural wonder in Poland, are famous for their unique limestone rock formations. What is the name of the highest peak in this range?",
        answers: [
          Answer(answer: "Giewont"),
          Answer(answer: "Trzy Korony", right: true),
          Answer(answer: "Krzemieniec"),
          Answer(answer: "Sniezka"),
        ],
      ),
      const Question(
        id: 18,
        question:
            "The Crooked Forest, a mysterious grove of pine trees with bent trunks, is located in which region of Poland?",
        answers: [
          Answer(answer: "Pomerania", right: true),
          Answer(answer: "Masuria"),
          Answer(answer: "Warmia"),
          Answer(answer: "West Pomerania"),
        ],
      ),
      const Question(
        id: 19,
        question: "What is the name of the beautiful limestone rock formation in the Tatra Mountains that resembles a \"sea eye\"?",
        answers: [
          Answer(answer: "Karkonosze Peaks"),
          Answer(answer: "Slowinski Dunes"),
          Answer(answer: "Tatra Lakes"),
          Answer(answer: "Morskie Oko", right: true),
        ],
      ),
    ],
  ),
];
