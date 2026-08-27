export class RecipeValidator {
  validate(recipe: any): boolean {
    return recipe !== null && recipe.title !== undefined && Array.isArray(recipe.ingredients);
  }
}
