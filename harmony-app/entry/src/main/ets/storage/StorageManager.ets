export interface StorageRecord {
  id: string
  createdAt: number
}

export class StorageManager {
  private pets: Array<Object> = []
  private recipes: Array<Object> = []

  savePet(pet: Object): void {
    this.pets.push(pet)
  }

  getPets(): Array<Object> {
    return this.pets
  }

  saveRecipe(recipe: Object): void {
    this.recipes.push(recipe)
  }

  getRecipes(): Array<Object> {
    return this.recipes
  }
}
