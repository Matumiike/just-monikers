class User < ApplicationRecord
  belongs_to :group
  belongs_to :connection_status
end
