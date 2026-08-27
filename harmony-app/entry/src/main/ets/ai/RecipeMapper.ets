export interface RecipeResult {
  title: string;
  calories: number;
  ingredients: string[];
  warnings: string[];
}

export class RecipeMapper {
  map(data: any): RecipeResult {
    return {
      title: data?.title ?? 'Pet Recipe',
      calories: Number(data?.calories ?? 0),
      ingredients: Array.isArray(data?.ingredients) ? data.ingredients : [],
      warnings: Array.isArray(data?.warnings) ? data.warnings : []
    };
  }
}
