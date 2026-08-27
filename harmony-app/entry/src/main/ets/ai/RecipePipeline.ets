export interface RecipePipelineInput {
  petName: string;
  species: string;
  weight: number;
}

export class RecipePipeline {
  buildPrompt(input: RecipePipelineInput): string {
    return `Create a safe recipe for ${input.petName}, ${input.species}, weight ${input.weight}kg.`;
  }
}
