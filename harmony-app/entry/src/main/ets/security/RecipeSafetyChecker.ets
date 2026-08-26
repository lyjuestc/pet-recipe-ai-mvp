import { ToxicFoodFilter } from './ToxicFoodFilter';
import { MedicalClaimFilter } from './MedicalClaimFilter';

export class RecipeSafetyChecker {

  static validate(recipe: any) {
    let warnings: string[] = [];

    const ingredients = recipe.ingredients || [];
    const names = ingredients.map((item: any) =>
      typeof item === 'string' ? item : item.name
    );

    const toxic = ToxicFoodFilter.check(names);

    if (toxic.length > 0) {
      warnings.push(
        `发现风险食材:${toxic.join(',')}`
      );
    }

    if (recipe.warnings) {
      recipe.warnings = recipe.warnings.map(
        (item: string) => MedicalClaimFilter.sanitize(item)
      );
    }

    return {
      safe: warnings.length === 0,
      warnings
    };
  }
}
