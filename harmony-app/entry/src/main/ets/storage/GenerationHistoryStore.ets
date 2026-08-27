export interface GenerationHistoryItem {
  id: string;
  createdAt: number;
  title: string;
}

export class GenerationHistoryStore {
  private items: GenerationHistoryItem[] = [];

  save(item: GenerationHistoryItem) {
    this.items.push(item);
  }

  list(): GenerationHistoryItem[] {
    return this.items;
  }
}
