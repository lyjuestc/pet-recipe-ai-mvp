export class CalorieCalculator {
  static calculateRER(weightKg: number): number {
    if (weightKg <= 0) return 0;
    return 70 * Math.pow(weightKg, 0.75);
  }

  static calculateMER(weightKg: number, factor: number = 1.6): number {
    return this.calculateRER(weightKg) * factor;
  }
}
