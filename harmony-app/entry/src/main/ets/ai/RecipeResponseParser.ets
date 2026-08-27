export interface ParsedRecipe {
  title: string;
  calories: number;
  ingredients: string[];
  steps: string[];
  warnings: string[];
}

export class RecipeResponseParser {
  parse(response: string): ParsedRecipe {
    try {
      const data = JSON.parse(response);
      return {
        title: data.title ?? '',
        calories: data.calories ?? 0,
        ingredients: Array.isArray(data.ingredients) ? data.ingredients : [],
        steps: Array.isArray(data.steps) ? data.steps : [],
        warnings: Array.isArray(data.warnings) ? data.warnings : []
      };
    } catch (_) {
      return {
        title: '',
        calories: 0,
        ingredients: [],
        steps: [],
        warnings: ['Invalid recipe response']
      };
    }
  }
}
