export class GenerateRecipeWorkflow {
  async generate(petId: string): Promise<string> {
    return `Generate recipe for ${petId}`;
  }
}
