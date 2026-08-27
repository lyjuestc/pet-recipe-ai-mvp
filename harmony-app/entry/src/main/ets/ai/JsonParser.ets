export class JsonParser {
  parse(raw: string): any {
    try {
      return JSON.parse(raw);
    } catch (_) {
      return null;
    }
  }
}
