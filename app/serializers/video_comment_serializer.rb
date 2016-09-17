class VideoCommentSerializer < ApplicationSerializer
  attributes :id, :contents

  belongs_to :user
end
