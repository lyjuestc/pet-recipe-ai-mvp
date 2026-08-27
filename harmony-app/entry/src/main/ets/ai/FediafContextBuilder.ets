export interface PetNutritionContext {
  species: string;
  weightKg: number;
  ageMonths: number;
  notes?: string;
}

export class FediafContextBuilder {
  build(pet: PetNutritionContext): string {
    return `Follow FEDIAF-inspired pet nutrition guidance. Species: ${pet.species}. Weight: ${pet.weightKg}kg. Age: ${pet.ageMonths} months. Avoid unsafe ingredients and provide a balanced recommendation.`;
  }
}
