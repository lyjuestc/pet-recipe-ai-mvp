export class OpenRouterClient {
  async generate(prompt: string): Promise<string> {
    return JSON.stringify({
      status: 'success',
      recipe: {
        name: 'Chicken Pumpkin Bowl',
        ingredients: ['鸡胸肉', '南瓜'],
        steps: ['煮熟食材', '混合后冷却'],
        warnings: ['辅助餐，不替代专业医疗建议']
      }
    });
  }
}
