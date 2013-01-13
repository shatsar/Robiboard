class AddAttachmentSnapshotToBookmarks < ActiveRecord::Migration
  def self.up
    change_table :bookmarks do |t|
      t.attachment :snapshot
    end
  end

  def self.down
    drop_attached_file :bookmarks, :snapshot
  end
end
