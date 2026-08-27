export interface RecipeDetailModel {
  id: string;
  title: string;
  calories: number;
  ingredients: string[];
  steps: string[];
  warnings: string[];
}

export class RecipeDetailBuilder {
  static fromRecipe(recipe: any): RecipeDetailModel {
    return {
      id: String(Date.now()),
      title: recipe?.title ?? '',
      calories: recipe?.calories ?? 0,
      ingredients: recipe?.ingredients ?? [],
      steps: recipe?.steps ?? [],
      warnings: recipe?.warnings ?? []
    };
  }
}
