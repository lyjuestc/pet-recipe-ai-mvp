@Component
export struct PetCard {
  pet: any;

  build() {
    Column() {
      Text('🐾 ' + this.pet.name)
        .fontSize(22)
      Text(this.pet.breed + ' · ' + this.pet.weightKg + 'kg')
    }
  }
}
