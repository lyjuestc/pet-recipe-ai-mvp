import { JsonParser, RecipeOutput } from './JsonParser';

export class RecipePipeline {
  async generate(prompt: string): Promise<RecipeOutput> {
    // OpenRouter integration point.
    const mockResponse = JSON.stringify({
      title: 'Pet healthy meal',
      calories: 300,
      ingredients: ['chicken', 'carrot'],
      warnings: []
    });

    return new JsonParser().parse(mockResponse);
  }
}
