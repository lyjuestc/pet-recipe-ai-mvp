import { RecipeOutput } from '../ai/JsonParser';

export interface RecipeHistoryMetadata {
  createdAt: number;
  source: string;
}

export interface RecipeHistoryItem {
  recipe: RecipeOutput;
  metadata: RecipeHistoryMetadata;
}

export class RecipeHistoryStore {
  private recipes: RecipeHistoryItem[] = [];

  save(recipe: RecipeOutput): void {
    this.recipes.push({
      recipe,
      metadata: {
        createdAt: Date.now(),
        source: 'generation'
      }
    });
  }

  list(): RecipeHistoryItem[] {
    return this.recipes;
  }
}
