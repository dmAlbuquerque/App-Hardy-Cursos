class Infos {
  static String email;
  static String accessToken;
  static DateTime expirationUTC;

  static DateTime expirationLocal() =>
      expirationUTC == null ? null : expirationUTC.toLocal();
}
