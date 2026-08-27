export enum GenerateRecipeViewStatus {
  Idle,
  Loading,
  Success,
  Error
}

export class GenerateRecipeFlowController {
  private status: GenerateRecipeViewStatus = GenerateRecipeViewStatus.Idle;

  startGeneration(): void {
    this.status = GenerateRecipeViewStatus.Loading;
  }

  completeGeneration(): void {
    this.status = GenerateRecipeViewStatus.Success;
  }

  failGeneration(): void {
    this.status = GenerateRecipeViewStatus.Error;
  }

  getStatus(): GenerateRecipeViewStatus {
    return this.status;
  }
}
