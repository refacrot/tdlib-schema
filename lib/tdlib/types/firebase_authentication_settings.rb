module TD::Types
  # Contains settings for Firebase Authentication in the official applications.
  class FirebaseAuthenticationSettings < Base
    autoload TD::Types.camelize('android'), 'tdlib/types/firebase_authentication_settings/android'
    autoload TD::Types.camelize('ios'), 'tdlib/types/firebase_authentication_settings/ios'
  end
end
