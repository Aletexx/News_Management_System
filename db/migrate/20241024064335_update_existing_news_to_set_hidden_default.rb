class UpdateExistingNewsToSetHiddenDefault < ActiveRecord::Migration[7.2]
    def up
      # Update all existing records to set hidden to false if it's NULL
      News.where(hidden: nil).update_all(hidden: false)
    end

    def down
      # No need to undo this, but you could set all back to nil if desired
      News.update_all(hidden: nil)
    end
  end
