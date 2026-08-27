export interface PetProfile {
  name: string;
  species: string;
  weightKg: number;
  ageMonths: number;
}

export interface GenerationContext {
  pet: PetProfile;
  prompt: string;
}

export class RecipeGenerationOrchestrator {
  buildContext(pet: PetProfile): GenerationContext {
    const prompt = `Create a safe homemade recipe for ${pet.species} named ${pet.name}. Weight: ${pet.weightKg}kg, age: ${pet.ageMonths} months.`;
    return {
      pet,
      prompt
    };
  }
}
