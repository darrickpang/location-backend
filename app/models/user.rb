class User < ApplicationRecord
    has_many :friend_requests_as_requestor,
        foreign_key: :requestor_id,
        class_name: :FriendRequest 

    has_many :friend_requests_as_receiver,
        foreign_key: :receiver_id,
        class_name: :FriendRequest
        
    has_secure_password
    has_secure_password :recovery_password, validations: false

    validates :name, uniqueness: true, presence: true
end
