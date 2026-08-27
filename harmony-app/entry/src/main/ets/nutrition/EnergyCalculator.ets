export class EnergyCalculator {
  rer(weightKg: number): number {
    return 70 * Math.pow(weightKg, 0.75);
  }

  mer(weightKg: number, activityFactor: number = 1.2): number {
    return this.rer(weightKg) * activityFactor;
  }
}
