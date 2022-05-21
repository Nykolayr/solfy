class Passport {
  static String? seriaStored = "";
  static String? numberStored = "";
  static String? pinflStored = "";
  static bool errorChat = false;
  static clearPassport() {
    seriaStored = "";
    numberStored = "";
    pinflStored = "";
    errorChat = false;
  }
}
