export const AIConfig = {
  baseUrl: 'https://openrouter.ai/api/v1/chat/completions',
  model: 'qwen/qwen-2.5-7b-instruct',
  fallbackModels: [
    'meta-llama/llama-3.1-8b-instruct',
    'mistralai/mistral-7b-instruct'
  ],
  temperature: 0.3,
  maxTokens: 1200
};
