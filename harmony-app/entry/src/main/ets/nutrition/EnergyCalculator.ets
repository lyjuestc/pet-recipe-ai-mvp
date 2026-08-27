export interface NutritionContext {
  species: string;
  weight: number;
  age: number;
  calories: number;
}

export class EnergyCalculator {
  rer(weight: number): number {
    return 70 * Math.pow(weight, 0.75);
  }

  mer(weight: number, factor: number = 1.2): number {
    return this.rer(weight) * factor;
  }
}
