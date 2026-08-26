export class NutritionContextBuilder {
  static build(pet:any, nutrition:any): string {
    return JSON.stringify({
      pet,
      nutritionRules: nutrition,
      requirements: [
        'species appropriate',
        'age appropriate',
        'safe ingredients',
        'portion awareness'
      ]
    });
  }
}
