import { Recipe } from '../model/Recipe';
import { Pet } from '../model/Pet';

export class RecipeService {
  generate(pet: Pet): Recipe {
    return {
      title: `${pet.name} 的个性化健康食谱`,
      ingredients: ['鸡胸肉', '胡萝卜', '南瓜'],
      steps: ['清洗食材', '煮熟切碎', '混合冷却后喂食'],
      warnings: ['禁止添加洋葱、巧克力、葡萄等危险食材']
    };
  }
}
