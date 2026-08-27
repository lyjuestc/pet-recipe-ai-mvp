export interface RecipeHistory {
  id: string;
  petName: string;
  recipeName: string;
  createdAt: number;
}

export class HistoryStore {
  private static records: RecipeHistory[] = [];

  static save(record: RecipeHistory) {
    this.records.push(record);
  }

  static all(): RecipeHistory[] {
    return this.records;
  }
}
