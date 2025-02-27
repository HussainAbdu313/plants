class DummyDatabase {
  // Indoor Plants
  static final List<Map> indoorPlants = [

    // # 1
    {
      "image id": "assets/Plants/Areca plam.png",
      "name": "Areca Plam Plant",
      "price": 700,
      "description": "The fiddle-leaf fig is a small tropical tree and broadleaf evergreen, commonly grown and popular as a houseplant in many areas of the United States. As a houseplant, it will grow 2 to 10 feet tall. It has large, broad, lyre-shaped, green leaves that can measure up to 18 inches long.",

    },

    // # 2

    {
      "image id": "assets/Plants/Money plant.jpg",
      "name": "Money Plant",
      "price": 400,
      "description": "It has web-like underground roots and thick, sword-shaped leaves with a unique banded pattern. It can flower once a year, producing clusters of cream-coloured flowers, that may develop into small orange fruits.",

    },

    // # 3

    {
      "image id": "assets/Plants/ZZplant.jpg",
      "name": "Zz Plants",
      "price": 500,
      "description": "Peace lilies are sturdy, easy to grow plants with glossy, dark green oval leaves that narrow to a point. The leaves rise directly from the soil. These plants also periodically produce lightly fragrant white flowers that resemble calla lilies. The long-lasting, pure white flowers will turn a pale green as they age..",

    },

    // # 4

    {
      "image id":"assets/Plants/Snake plant.jpeg",
      "name":"Snake Plant",
      "price":800,
      "description":"",
    }

    //
  ];

  // Outdoor Plants
  static final List<Map> outdoorPlants = [
  // # 1
    {
      "image id":"data:image/jpeg;base64,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",
      "name":"Cactus",
      "price":350,
      "description":"cactus, (family Cactaceae), flowering plant family (order Caryophyllales) with nearly 2,000 species and 139 genera. Cacti are native through most of the length of North and South America, from British Columbia and Alberta southward; the southernmost limit of their range extends far into Chile and Argentina.",
    }
];

  // Pots
static final List<Map> potsPlants = [

//   # 1

  {
    "image":"",
    "name":"Metal Plant Stand with Planter",
    "model":"1355-B",
    "price":"MRP  1450",
    "description":"",
  },

  // # 2

  {
    "image":"",
    "name":"Metal Pot with Aluminium Legs",
    "model":"1002-A",
    "price":"1600",
    "description":"",
  },

//   # 3

  {
    "image":"",
    "name":"Fancy Metal Planter ",
    "model":"1919-Gold",
    "price":"1700",
    "description":"",
  },

//   # 4

  {
    "image":"",
    "name":"Metal Iron Planter",
    "model":"1503-Gold",
    "price":"1750",
    "description":"",
  },

  // # 5

  {
    "image":"",
    "name":"Egg shaped Fancy Planter",
    "model":"1500-Brass,white",
    "price":"2000",
    "description":"",
  },

  // # 6

  {
    "image":"",
    "name":"Two Tier Corner Stand",
    "model":"1507",
    "price":"1300",
    "description":"",
  },

];
}

