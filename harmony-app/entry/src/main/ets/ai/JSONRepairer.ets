export class JSONRepairer {

  static repair(text: string): string {
    let result = text.trim();

    result = result
      .replace(/```json/g, '')
      .replace(/```/g, '')
      .trim();

    const start = result.indexOf('{');
    const end = result.lastIndexOf('}');

    if (start >= 0 && end > start) {
      return result.substring(start, end + 1);
    }

    return result;
  }
}
