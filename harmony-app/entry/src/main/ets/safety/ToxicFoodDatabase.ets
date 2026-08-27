export class ToxicFoodDatabase {
  private foods: string[] = [
    'chocolate',
    'onion',
    'garlic',
    'grape',
    'xylitol'
  ];

  contains(name: string): boolean {
    return this.foods.includes(name.toLowerCase());
  }
}
