export class OpenRouterHttpClient {
  async generate(prompt: string): Promise<string> {
    return JSON.stringify({
      title: 'Pet Recipe',
      calories: 0,
      ingredients: [],
      warnings: [],
      prompt
    });
  }
}
