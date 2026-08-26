export const ToxicFoods: string[] = [
  'chocolate',
  'grape',
  'raisin',
  'onion',
  'garlic',
  'xylitol',
  'alcohol'
];

export class ToxicFoodFilter {
  static check(ingredients: string[]): string[] {
    return ingredients.filter(item =>
      ToxicFoods.includes(item.toLowerCase())
    );
  }
}
