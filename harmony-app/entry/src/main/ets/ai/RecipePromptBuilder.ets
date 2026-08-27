export interface RecipePromptContext {
  petName: string
  species: string
  weightKg: number
  ageYears: number
}

export class RecipePromptBuilder {
  static build(context: RecipePromptContext): string {
    return `Generate a safe pet recipe for ${context.petName}. Species: ${context.species}. Weight: ${context.weightKg}kg. Age: ${context.ageYears} years. Return JSON only.`
  }
}
