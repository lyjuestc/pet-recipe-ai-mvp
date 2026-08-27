export interface RecipeGenerationTrigger {
  execute(): Promise<void>;
}

export class GenerateRecipePageConnector {
  private status: string = 'idle';

  getStatus(): string {
    return this.status;
  }

  async generate(trigger: RecipeGenerationTrigger): Promise<void> {
    this.status = 'loading';
    try {
      await trigger.execute();
      this.status = 'success';
    } catch (_) {
      this.status = 'error';
    }
  }
}
