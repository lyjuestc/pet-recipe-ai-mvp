import { Recipe } from '../model/Recipe';
import { Pet } from '../model/Pet';

export class RecipeService {
  generate(pet: Pet): Recipe {
    return {
      title: `${pet.name} 的健康食谱`,
      ingredients: ['鸡胸肉', '胡萝卜', '米饭'],
      steps: ['煮熟食材', '混合冷却', '定量喂食'],
      warnings: ['请避免洋葱、巧克力等危险食材']
    };
  }
}
