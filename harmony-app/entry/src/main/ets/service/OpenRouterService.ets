import { AIConfig } from '../config/AIConfig';
import { ApiKeyManager } from '../security/ApiKeyManager';
import { HttpClient } from '../network/HttpClient';

export class OpenRouterService {

  static async generate(prompt: string): Promise<any> {
    const body = {
      model: AIConfig.model,
      temperature: AIConfig.temperature,
      max_tokens: AIConfig.maxTokens,
      messages: [
        {
          role: 'system',
          content: 'You are a safe pet nutrition assistant. Return valid JSON only.'
        },
        {
          role: 'user',
          content: prompt
        }
      ]
    };

    const headers = {
      Authorization: `Bearer ${ApiKeyManager.getKey()}`,
      'Content-Type': 'application/json'
    };

    return await HttpClient.post(
      AIConfig.baseUrl,
      body,
      headers
    );
  }
}
