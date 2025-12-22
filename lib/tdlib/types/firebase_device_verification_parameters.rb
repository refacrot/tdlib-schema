module TD::Types
  # Describes parameters to be used for device verification.
  class FirebaseDeviceVerificationParameters < Base
    autoload TD::Types.camelize('safety_net'), 'tdlib/types/firebase_device_verification_parameters/safety_net'
    autoload TD::Types.camelize('play_integrity'), 'tdlib/types/firebase_device_verification_parameters/play_integrity'
  end
end
