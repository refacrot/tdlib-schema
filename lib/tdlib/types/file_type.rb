module TD::Types
  # Represents the type of file.
  class FileType < Base
    autoload TD::Types.camelize('none'), 'tdlib/types/file_type/none'
    autoload TD::Types.camelize('animation'), 'tdlib/types/file_type/animation'
    autoload TD::Types.camelize('audio'), 'tdlib/types/file_type/audio'
    autoload TD::Types.camelize('document'), 'tdlib/types/file_type/document'
    autoload TD::Types.camelize('notification_sound'), 'tdlib/types/file_type/notification_sound'
    autoload TD::Types.camelize('photo'), 'tdlib/types/file_type/photo'
    autoload TD::Types.camelize('photo_story'), 'tdlib/types/file_type/photo_story'
    autoload TD::Types.camelize('profile_photo'), 'tdlib/types/file_type/profile_photo'
    autoload TD::Types.camelize('secret'), 'tdlib/types/file_type/secret'
    autoload TD::Types.camelize('secret_thumbnail'), 'tdlib/types/file_type/secret_thumbnail'
    autoload TD::Types.camelize('secure'), 'tdlib/types/file_type/secure'
    autoload TD::Types.camelize('self_destructing_photo'), 'tdlib/types/file_type/self_destructing_photo'
    autoload TD::Types.camelize('self_destructing_video'), 'tdlib/types/file_type/self_destructing_video'
    autoload TD::Types.camelize('self_destructing_video_note'), 'tdlib/types/file_type/self_destructing_video_note'
    autoload TD::Types.camelize('self_destructing_voice_note'), 'tdlib/types/file_type/self_destructing_voice_note'
    autoload TD::Types.camelize('sticker'), 'tdlib/types/file_type/sticker'
    autoload TD::Types.camelize('thumbnail'), 'tdlib/types/file_type/thumbnail'
    autoload TD::Types.camelize('unknown'), 'tdlib/types/file_type/unknown'
    autoload TD::Types.camelize('video'), 'tdlib/types/file_type/video'
    autoload TD::Types.camelize('video_note'), 'tdlib/types/file_type/video_note'
    autoload TD::Types.camelize('video_story'), 'tdlib/types/file_type/video_story'
    autoload TD::Types.camelize('voice_note'), 'tdlib/types/file_type/voice_note'
    autoload TD::Types.camelize('wallpaper'), 'tdlib/types/file_type/wallpaper'
  end
end
