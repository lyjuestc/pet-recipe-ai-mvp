export enum LogLevel {
  INFO,
  WARN,
  ERROR
}

export class Logger {
  static info(message:string){
    console.info('[PetAI]', message);
  }

  static warn(message:string){
    console.warn('[PetAI]', message);
  }

  static error(message:string){
    console.error('[PetAI]', message);
  }
}
