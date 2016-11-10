module UsersHelper

	def friend_buttons(user)
		case current_user.friendship_status(user)
		when "not_friends"
			link_to "Add as Friend", friendships_path(user_id: user.id), method: :post
		when "friends"
			link_to "Remove Friend", friendship_path(current_user.friendship_relation(user)), method: :delete
		when "pending"
			link_to "Cancel Request", friendship_path(current_user.friendship_relation(user)), method: :delete
		when "requested"
			deny = link_to "Deny", friendship_path(current_user.friendship_relation(user)), method: :delete
			accept = link_to "Accept", accept_friendship_path(current_user.friendship_relation(user)), method: :put
			return accept + " " + deny
		end
	end

end
