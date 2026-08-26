import { ToxicFoodFilter } from '../security/ToxicFoodFilter';

export class SafetyTest {
  static run(){
    return ToxicFoodFilter.check(['chocolate']).length > 0;
  }
}
