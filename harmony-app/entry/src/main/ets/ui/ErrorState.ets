export enum ErrorCode {
  NETWORK_ERROR,
  AI_TIMEOUT,
  INVALID_JSON,
  SAFETY_BLOCK,
  STORAGE_ERROR
}

export interface AppError {
  code: ErrorCode;
  message: string;
  retryable: boolean;
}

export class ErrorState {
  current?: AppError;

  set(error: AppError) {
    this.current = error;
  }

  clear() {
    this.current = undefined;
  }
}
