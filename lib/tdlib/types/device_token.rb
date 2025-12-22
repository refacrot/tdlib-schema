module TD::Types
  # Represents a data needed to subscribe for push notifications through registerDevice method.
  #   To use specific push notification service, the correct application platform must be specified and a valid
  #   server authentication data must be uploaded at https://my.telegram.org.
  class DeviceToken < Base
    autoload TD::Types.camelize('firebase_cloud_messaging'), 'tdlib/types/device_token/firebase_cloud_messaging'
    autoload TD::Types.camelize('apple_push'), 'tdlib/types/device_token/apple_push'
    autoload TD::Types.camelize('apple_push_vo_ip'), 'tdlib/types/device_token/apple_push_vo_ip'
    autoload TD::Types.camelize('windows_push'), 'tdlib/types/device_token/windows_push'
    autoload TD::Types.camelize('microsoft_push'), 'tdlib/types/device_token/microsoft_push'
    autoload TD::Types.camelize('microsoft_push_vo_ip'), 'tdlib/types/device_token/microsoft_push_vo_ip'
    autoload TD::Types.camelize('web_push'), 'tdlib/types/device_token/web_push'
    autoload TD::Types.camelize('simple_push'), 'tdlib/types/device_token/simple_push'
    autoload TD::Types.camelize('ubuntu_push'), 'tdlib/types/device_token/ubuntu_push'
    autoload TD::Types.camelize('black_berry_push'), 'tdlib/types/device_token/black_berry_push'
    autoload TD::Types.camelize('tizen_push'), 'tdlib/types/device_token/tizen_push'
    autoload TD::Types.camelize('huawei_push'), 'tdlib/types/device_token/huawei_push'
  end
end
