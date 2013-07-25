class Scene < ActiveRecord::Base

  belongs_to :script

  attr_accessible :english_subtitle, :foreign_subtitle_1, :foreign_subtitle_2, :script_id, :sequence_position, :storyboard

  has_attached_file :audio_file,
                    default_url: '/assets/normal/missing_audio_file.png'

  has_attached_file :screenshot,
                    default_url: '/assets/normal/missing_screenshot.png'
end
