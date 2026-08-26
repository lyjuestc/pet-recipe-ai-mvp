export class RecipeNormalizer {

  static normalize(recipe: any) {
    return {
      name: recipe?.name || 'AI宠物食谱',
      type: recipe?.type || '日常辅助饮食',
      ingredients: recipe?.ingredients || [],
      steps: recipe?.steps || [],
      warnings: recipe?.warnings || [
        '本食谱仅作为日常饮食建议，不替代专业宠物医疗建议'
      ]
    };
  }
}
