class AddAttachmentAudioFileScreenshotToScenes < ActiveRecord::Migration
  def self.up
    change_table :scenes do |t|
      t.attachment :audio_file
      t.attachment :screenshot
    end
  end

  def self.down
    drop_attached_file :scenes, :audio_file
    drop_attached_file :scenes, :screenshot
  end
end
