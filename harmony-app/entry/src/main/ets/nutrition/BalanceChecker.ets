export class BalanceChecker {
  static check(recipe: any) {
    const warnings: string[] = [];

    if (!recipe || !recipe.ingredients || recipe.ingredients.length === 0) {
      warnings.push('缺少食材信息');
    }

    if (!recipe || !recipe.steps || recipe.steps.length === 0) {
      warnings.push('缺少制作步骤');
    }

    return {
      balanced: warnings.length === 0,
      warnings
    };
  }
}
