import { RecipeOutput } from '../ai/JsonParser';

export class RecipeHistoryStore {
  private recipes: RecipeOutput[] = [];

  save(recipe: RecipeOutput): void {
    this.recipes.push(recipe);
  }

  list(): RecipeOutput[] {
    return this.recipes;
  }
}
