export type GenerationStatus = 'idle' | 'loading' | 'success' | 'error';

export class GenerationResultState {
  status: GenerationStatus = 'idle';
  errorMessage: string = '';

  setLoading() {
    this.status = 'loading';
  }

  setSuccess() {
    this.status = 'success';
  }

  setError(message: string) {
    this.status = 'error';
    this.errorMessage = message;
  }
}
