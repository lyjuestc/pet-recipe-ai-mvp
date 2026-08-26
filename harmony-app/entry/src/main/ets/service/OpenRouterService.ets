export class OpenRouterService {
  static async generate(prompt: string): Promise<string> {
    // TODO: connect HarmonyOS HTTP client with OpenRouter API.
    // API key should not be hard-coded in production.
    return JSON.stringify({
      status: 'pending',
      message: 'OpenRouter integration placeholder'
    });
  }
}
