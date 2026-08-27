export interface RecipeOutput {
  title: string;
  calories: number;
  ingredients: string[];
  warnings: string[];
}

export class JsonParser {
  parse(raw: string): RecipeOutput | null {
    try {
      const data = JSON.parse(raw);
      return {
        title: data.title ?? 'Pet Recipe',
        calories: Number(data.calories ?? 0),
        ingredients: data.ingredients ?? [],
        warnings: data.warnings ?? []
      };
    } catch (error) {
      return null;
    }
  }
}
