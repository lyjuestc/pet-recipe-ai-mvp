export class RecipeGenerationPipeline {

  static async generate(pet:any) {

    const nutrition = {
      weightKg: pet.weightKg,
      ageMonths: pet.ageMonths,
      species: pet.species
    };

    return {
      pet,
      nutrition,
      status: 'READY_FOR_AI_GENERATION'
    };
  }

}
