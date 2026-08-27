export interface PetProfile {
  name: string;
  species: string;
  weight: number;
  age: number;
}

export class PetStore {
  private static pet: PetProfile | null = null;

  static save(pet: PetProfile): void {
    this.pet = pet;
  }

  static get(): PetProfile | null {
    return this.pet;
  }
}
