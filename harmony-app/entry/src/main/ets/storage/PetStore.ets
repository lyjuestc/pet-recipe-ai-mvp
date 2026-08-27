export interface PetProfile {
  name: string;
  species: string;
  weight: number;
  age: number;
}

export class PetStore {
  private pet: PetProfile | null = null;

  save(pet: PetProfile): void {
    this.pet = pet;
  }

  get(): PetProfile | null {
    return this.pet;
  }
}
