export class LifeStageCalculator {
  static calculate(species: string, ageMonths: number): string {
    if (species === 'dog') {
      if (ageMonths < 12) return 'puppy';
      if (ageMonths >= 84) return 'senior';
      return 'adult';
    }

    if (species === 'cat') {
      if (ageMonths < 12) return 'kitten';
      if (ageMonths >= 96) return 'senior';
      return 'adult';
    }

    return 'adult';
  }
}
