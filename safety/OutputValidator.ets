export class OutputValidator {

  static toxicFoods = [
    'chocolate',
    'grape',
    'onion',
    'garlic',
    'xylitol'
  ];

  static validate(recipe:any):boolean {
    const text = JSON.stringify(recipe).toLowerCase();
    return !this.toxicFoods.some(food => text.includes(food));
  }
}
