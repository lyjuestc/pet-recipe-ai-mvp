import { Recipe } from '../model/Recipe';

export class HistoryStore {
  private history: Recipe[] = [];

  save(recipe: Recipe) {
    this.history.push(recipe);
  }

  all(): Recipe[] {
    return this.history;
  }
}
