class User
	include Mongoid::Document

	field :first_name, type: String
	field :last_name, type: String

	shard_key :first_name
end

