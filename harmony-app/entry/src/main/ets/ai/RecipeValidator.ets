export interface RecipeResult {
  title: string;
  ingredients: string[];
  calories: number;
}

export class RecipeValidator {
  validate(recipe: RecipeResult): boolean {
    if (!recipe.title || recipe.ingredients.length === 0) {
      return false;
    }
    return recipe.calories > 0;
  }
}
