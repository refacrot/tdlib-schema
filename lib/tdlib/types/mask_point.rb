module TD::Types
  # Part of the face, relative to which a mask is placed.
  class MaskPoint < Base
    autoload TD::Types.camelize('forehead'), 'tdlib/types/mask_point/forehead'
    autoload TD::Types.camelize('eyes'), 'tdlib/types/mask_point/eyes'
    autoload TD::Types.camelize('mouth'), 'tdlib/types/mask_point/mouth'
    autoload TD::Types.camelize('chin'), 'tdlib/types/mask_point/chin'
  end
end
