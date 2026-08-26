export class RecipeValidator {

  static validate(recipe:any) {
    const warnings:string[] = [];

    if (!recipe) {
      warnings.push('empty recipe');
    }

    if (!recipe?.ingredients || recipe.ingredients.length === 0) {
      warnings.push('missing ingredients');
    }

    if (!recipe?.steps || recipe.steps.length === 0) {
      warnings.push('missing cooking steps');
    }

    return {
      valid: warnings.length === 0,
      warnings
    };
  }

}
