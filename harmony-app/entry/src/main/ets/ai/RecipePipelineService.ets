export interface RecipeRequest {
  petName: string
  species: string
  breed: string
  weightKg: number
  ageMonths: number
  allergy?: string
}

export interface RecipeResult {
  title: string
  ingredients: string[]
  warnings: string[]
}

export class RecipePipelineService {
  async generate(request: RecipeRequest): Promise<RecipeResult> {
    // MVP pipeline placeholder:
    // 1. build nutrition context
    // 2. call OpenRouter client
    // 3. validate AI response
    // 4. persist recipe
    return {
      title: `${request.petName} 专属营养食谱`,
      ingredients: [],
      warnings: ['AI建议仅供参考，请结合宠物实际情况调整']
    }
  }
}
