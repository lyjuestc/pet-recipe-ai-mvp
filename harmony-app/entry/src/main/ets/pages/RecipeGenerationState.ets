export type GenerationState = 'idle' | 'loading' | 'success' | 'error';

export class RecipeGenerationState {
  state: GenerationState = 'idle';

  setLoading(): void {
    this.state = 'loading';
  }

  setSuccess(): void {
    this.state = 'success';
  }

  setError(): void {
    this.state = 'error';
  }
}
