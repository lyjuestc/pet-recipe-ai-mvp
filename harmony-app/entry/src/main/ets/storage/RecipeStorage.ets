export class RecipeStorage {

  private static recipes: Array<any> = [];

  static save(recipe: any) {
    this.recipes.unshift(recipe);
  }

  static getAll(): Array<any> {
    return this.recipes;
  }

  static clear() {
    this.recipes = [];
  }
}
