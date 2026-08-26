export class AIResponseParser {

  static parse(text:string) {
    const start = text.indexOf('{');
    const end = text.lastIndexOf('}');

    if (start < 0 || end < 0) {
      throw new Error('Invalid AI JSON response');
    }

    return JSON.parse(text.substring(start, end + 1));
  }
}
