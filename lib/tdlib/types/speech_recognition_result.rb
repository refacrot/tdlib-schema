module TD::Types
  # Describes result of speech recognition in a voice note.
  class SpeechRecognitionResult < Base
    autoload TD::Types.camelize('pending'), 'tdlib/types/speech_recognition_result/pending'
    autoload TD::Types.camelize('text'), 'tdlib/types/speech_recognition_result/text'
    autoload TD::Types.camelize('error'), 'tdlib/types/speech_recognition_result/error'
  end
end
