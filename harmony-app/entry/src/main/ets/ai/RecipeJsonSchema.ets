export const RecipeJsonSchema = {
  name: 'string',
  type: 'string',
  ingredients: [
    {
      name: 'string',
      amount: 'string'
    }
  ],
  steps: ['string'],
  warnings: ['string']
};
