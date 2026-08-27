import { Pet } from '../model/PetModel';

export class PetRepository {
  private pets: Pet[] = [];

  save(pet: Pet): void {
    const index = this.pets.findIndex(item => item.id === pet.id);
    if (index >= 0) {
      this.pets[index] = pet;
    } else {
      this.pets.push(pet);
    }
  }

  findAll(): Pet[] {
    return this.pets;
  }

  findById(id: string): Pet | undefined {
    return this.pets.find(item => item.id === id);
  }
}
