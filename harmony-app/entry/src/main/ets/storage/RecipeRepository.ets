export interface RecipeRecord {
  id: string;
  petId: string;
  title: string;
  calories: number;
  ingredients: string[];
  createdAt: number;
  favorite: boolean;
}

export class RecipeRepository {
  private recipes: RecipeRecord[] = [];

  save(recipe: RecipeRecord): void {
    this.recipes.push(recipe);
  }

  findAll(): RecipeRecord[] {
    return this.recipes;
  }

  favorite(id: string): void {
    const recipe = this.recipes.find(item => item.id === id);
    if (recipe) {
      recipe.favorite = true;
    }
  }
}
