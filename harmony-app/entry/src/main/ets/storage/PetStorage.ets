import preferences from '@ohos.data.preferences';

export class PetStorage {
  private static STORE = 'pet_storage';
  private static KEY = 'current_pet';

  static async savePet(context: Context, pet: Object) {
    const pref = await preferences.getPreferences(context, PetStorage.STORE);
    await pref.put(PetStorage.KEY, JSON.stringify(pet));
    await pref.flush();
  }

  static async getPet(context: Context): Promise<Object> {
    const pref = await preferences.getPreferences(context, PetStorage.STORE);
    const value = await pref.get(PetStorage.KEY, '{}');
    return JSON.parse(value as string);
  }

  static async clear(context: Context) {
    const pref = await preferences.getPreferences(context, PetStorage.STORE);
    await pref.delete(PetStorage.KEY);
    await pref.flush();
  }
}
