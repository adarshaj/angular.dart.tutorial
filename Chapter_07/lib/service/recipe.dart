library recipe;

class Recipe {
  String id;
  String name;
  String category;
  List<String> ingredients;
  String directions;
  int rating;
  String imgUrl;

  Recipe(this.id, this.name, this.category, this.ingredients, this.directions,
      this.rating, this.imgUrl);

  toJson() => {
    "id": id,
    "name": name,
    "category": category,
    "ingredients": ingredients,
    "directions": directions,
    "rating": rating,
    "imgUrl": imgUrl
  };

  factory Recipe.fromJsonMap(_) => new Recipe(_['id'], _['name'], _['category'],
      _['ingredients'], _['directions'], _['rating'], _['imgUrl']);
}
