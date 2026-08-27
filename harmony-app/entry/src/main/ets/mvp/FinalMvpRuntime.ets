export interface PetProfile {
  name: string;
  type: string;
  weightKg: number;
}

export interface RecipeResult {
  title: string;
  ingredients: string[];
  warnings: string[];
}

export class FinalMvpRuntime {
  generate(profile: PetProfile): RecipeResult {
    return {
      title: `${profile.name} healthy recipe`,
      ingredients: ['protein', 'vegetables'],
      warnings: []
    };
  }
}
