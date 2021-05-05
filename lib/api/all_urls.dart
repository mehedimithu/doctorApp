class AllUrls{

  static String postLoginUrl(String email, String password){
    return "pms/api/main.auth?email=$email&password=$password";
  }

  static String postSignupUrl(String name, String email, String password, String status){
    return "pms/api/register?name=$name&email=$email&password=$password&status=$status";
  }

}