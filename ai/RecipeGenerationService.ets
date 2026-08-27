export interface RecipeGenerationRequest {
  petName: string
  species: string
  weightKg: number
}

export interface RecipeGenerationResult {
  title: string
  ingredients: string[]
  calories: number
}

export class RecipeGenerationService {
  generate(request: RecipeGenerationRequest): RecipeGenerationResult {
    return {
      title: `${request.petName} nutrition recipe`,
      ingredients: [],
      calories: 0
    }
  }
}
