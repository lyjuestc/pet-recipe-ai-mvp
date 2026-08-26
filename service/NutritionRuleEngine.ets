import { LifeStageCalculator } from './LifeStageCalculator';

export class NutritionRuleEngine {
  static analyze(pet: any) {
    const lifeStage = LifeStageCalculator.calculate(
      pet.species,
      pet.ageMonths
    );

    let nutritionFocus: string[] = [];

    if (pet.species === 'dog') {
      nutritionFocus = lifeStage === 'puppy'
        ? ['growth', 'protein', 'calcium']
        : ['maintenance', 'protein', 'healthy_weight'];
    }

    if (pet.species === 'cat') {
      nutritionFocus = [
        'animal_protein',
        'taurine',
        'hydration'
      ];
    }

    return {
      species: pet.species,
      lifeStage,
      nutritionFocus,
      avoid: pet.allergies || []
    };
  }
}
