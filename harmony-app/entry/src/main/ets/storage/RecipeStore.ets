export interface RecipeRecord {
  id: string;
  title: string;
  calories: number;
  ingredients: string[];
  createdAt: number;
}

export class RecipeStore {
  private records: RecipeRecord[] = [];

  save(recipe: RecipeRecord): void {
    this.records.push(recipe);
  }

  list(): RecipeRecord[] {
    return this.records;
  }
}
