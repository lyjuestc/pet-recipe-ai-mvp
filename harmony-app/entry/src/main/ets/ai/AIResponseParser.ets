export class AIResponseParser {

  static parse(response: string) {
    try {
      let text = response.trim();
      text = text.replace(/```json/g, '').replace(/```/g, '').trim();

      const data = JSON.parse(text);

      return {
        success: true,
        data
      };
    } catch (error) {
      return {
        success: false,
        data: null,
        error: 'INVALID_AI_JSON'
      };
    }
  }
}
