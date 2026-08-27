export interface RecipeGenerationRequest {
  petName: string;
  petType: string;
  weightKg: number;
}

export interface RecipeGenerationResponse {
  title: string;
  ingredients: string[];
  warnings: string[];
}

/**
 * Generation client boundary.
 * Keeps UI separated from AI provider implementation.
 */
export class RecipeGenerationClient {
  async generate(request: RecipeGenerationRequest): Promise<RecipeGenerationResponse> {
    return {
      title: `${request.petName} recipe`,
      ingredients: [],
      warnings: []
    };
  }
}
