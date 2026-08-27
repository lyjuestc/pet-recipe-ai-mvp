export enum RecipeGenerationStatus {
  Idle = 'idle',
  Loading = 'loading',
  Success = 'success',
  Error = 'error'
}

export interface RecipeGenerationFlowState {
  status: RecipeGenerationStatus;
  message: string;
}

export class RecipeGenerationFlowStateManager {
  private state: RecipeGenerationFlowState = {
    status: RecipeGenerationStatus.Idle,
    message: ''
  };

  setLoading() {
    this.state = { status: RecipeGenerationStatus.Loading, message: '' };
  }

  setSuccess(message: string = '') {
    this.state = { status: RecipeGenerationStatus.Success, message };
  }

  setError(message: string) {
    this.state = { status: RecipeGenerationStatus.Error, message };
  }

  getState(): RecipeGenerationFlowState {
    return this.state;
  }
}
