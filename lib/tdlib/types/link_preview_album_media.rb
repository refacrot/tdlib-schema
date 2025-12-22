module TD::Types
  # Describes a media from a link preview album.
  class LinkPreviewAlbumMedia < Base
    autoload TD::Types.camelize('photo'), 'tdlib/types/link_preview_album_media/photo'
    autoload TD::Types.camelize('video'), 'tdlib/types/link_preview_album_media/video'
  end
end
