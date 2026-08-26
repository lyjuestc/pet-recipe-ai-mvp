import { OpenRouterService } from './OpenRouterService';

export class RecipeServiceAdapter {
  static async createRecipe(pet: Object) {
    const prompt = JSON.stringify({
      role: 'pet nutrition assistant',
      pet
    });

    const result = await OpenRouterService.generate(prompt);
    return result;
  }
}
