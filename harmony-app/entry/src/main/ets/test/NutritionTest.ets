import { CalorieCalculator } from '../nutrition/CalorieCalculator';

export class NutritionTest {
  static run(){
    const rer = CalorieCalculator.calculateRER(10);
    return rer > 0;
  }
}
