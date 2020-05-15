class Post < ApplicationRecord
  validates :title, :content, :status, presence: {message:'は、必須項目です。'}

  def display_status()
    if self.status == 1
      return '公開'
    end
    return '非公開'
  end

  def unpublish_number
    return 2
  end
end
