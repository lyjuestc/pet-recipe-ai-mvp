import { NutritionRuleEngine } from './NutritionRuleEngine';
import { IngredientSelector } from './IngredientSelector';
import { PromptBuilder } from '../ai/PromptBuilder';
import { AIResponseParser } from '../ai/AIResponseParser';
import { AIModelConfig } from '../ai/AIModelConfig';
import { OutputValidator } from '../safety/OutputValidator';

/**
 * Main application service.
 * Connects local nutrition logic with AI generation pipeline.
 */
export class RecipeService {

  static async generateRecipe(pet: any, ingredients: any[]) {

    const nutritionContext =
      NutritionRuleEngine.analyze(pet);

    const recommendedIngredients =
      IngredientSelector.select(
        nutritionContext,
        ingredients
      );

    const prompt =
      PromptBuilder.build(
        pet,
        nutritionContext,
        recommendedIngredients
      );

    // AI client will be connected here in the next iteration.
    const mockResponse = JSON.stringify({
      status: 'success',
      recipe: {
        name: 'Beef Pumpkin Bowl',
        ingredients: recommendedIngredients,
        steps: [
          'Cook ingredients safely',
          'Mix and serve'
        ],
        warnings: [
          'Supplementary meal only'
        ]
      }
    });

    const recipe =
      AIResponseParser.parse(mockResponse);

    if (!OutputValidator.validate(recipe)) {
      throw new Error('Unsafe recipe output');
    }

    return recipe;
  }
}
