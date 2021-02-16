class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :friend_requests_as_receiver, :friend_requests_as_requestor
end
