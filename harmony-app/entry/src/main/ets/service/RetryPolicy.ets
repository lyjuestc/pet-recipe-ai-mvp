export interface RetryConfig {
  maxRetry: number;
  retryDelay: number;
  enableFallback: boolean;
}

export class RetryPolicy {
  static config: RetryConfig = {
    maxRetry: 3,
    retryDelay: 1000,
    enableFallback: true
  };

  static async execute(task: () => Promise<any>) {
    let count = 0;

    while (count < this.config.maxRetry) {
      try {
        return await task();
      } catch (error) {
        count++;
        if (count >= this.config.maxRetry) {
          throw error;
        }
        await new Promise(resolve => setTimeout(resolve, this.config.retryDelay));
      }
    }
  }
}
