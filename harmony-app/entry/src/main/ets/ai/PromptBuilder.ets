export interface PetProfile {
  name: string;
  species: string;
  breed: string;
  ageMonths: number;
  weightKg: number;
}

export class PromptBuilder {
  build(profile: PetProfile): string {
    return `Generate a safe pet recipe for ${profile.species}. Name:${profile.name}, breed:${profile.breed}, age:${profile.ageMonths} months, weight:${profile.weightKg}kg. Return JSON only.`;
  }
}
