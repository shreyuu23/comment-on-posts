class AddCommentIdToReplies < ActiveRecord::Migration[6.0]
  def change
    add_column :replies, :comment_id, :integer
  end
end
