module TD::Types
  # Describes a tab shown in a user or a chat profile.
  class ProfileTab < Base
    autoload TD::Types.camelize('posts'), 'tdlib/types/profile_tab/posts'
    autoload TD::Types.camelize('gifts'), 'tdlib/types/profile_tab/gifts'
    autoload TD::Types.camelize('media'), 'tdlib/types/profile_tab/media'
    autoload TD::Types.camelize('files'), 'tdlib/types/profile_tab/files'
    autoload TD::Types.camelize('links'), 'tdlib/types/profile_tab/links'
    autoload TD::Types.camelize('music'), 'tdlib/types/profile_tab/music'
    autoload TD::Types.camelize('voice'), 'tdlib/types/profile_tab/voice'
    autoload TD::Types.camelize('gifs'), 'tdlib/types/profile_tab/gifs'
  end
end
