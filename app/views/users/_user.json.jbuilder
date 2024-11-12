json.extract! user, :id, :name, :ads_power_profile_id, :ads_power_sequence_id, :notes, :group_id, :subgroup_id, :created_at, :updated_at
json.url user_url(user, format: :json)
