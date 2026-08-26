import { JSONRepairer } from '../ai/JSONRepairer';

export class ParserTest {
  static run(){
    const result = JSONRepairer.repair('```json\n{}\n```');
    return result.length > 0;
  }
}
