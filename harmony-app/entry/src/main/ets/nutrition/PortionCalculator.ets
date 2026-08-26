export class PortionCalculator {
  static calculateDailyPortion(weightKg: number, caloriesPer100g: number = 150): number {
    if (weightKg <= 0) return 0;
    const calories = 70 * Math.pow(weightKg, 0.75) * 1.6;
    return Math.round((calories / caloriesPer100g) * 100);
  }
}
