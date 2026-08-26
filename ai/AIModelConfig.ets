export const AIModelConfig = {
  primary: 'qwen/qwen-2.5-7b-instruct',
  fallback: [
    'meta-llama/llama-3.1-8b-instruct',
    'mistralai/mistral-7b-instruct'
  ],
  temperature: 0.3,
  maxTokens: 1500
};
