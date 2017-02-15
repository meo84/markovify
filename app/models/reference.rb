class Reference < ActiveRecord::Base
  VALID_CONTENT_REGEX = /\S+\s\S+\s\S+\s\S+/
  validates :content, presence:true, format: { with: VALID_CONTENT_REGEX }
end
