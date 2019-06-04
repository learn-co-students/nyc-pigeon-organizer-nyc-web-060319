


def nyc_pigeon_organizer(data)
	new_hash = {}

	data.each do |data_class, data_options|
		data_options.each do |data_option, names_array|
			names_array.each do |name|
				if new_hash.key?(name) == false
					new_hash[name] = {}
				end
					#new_hash[name][data_class] = data_option  #> need arrays, not "Andrew"=>{:color=>:white, :gender=>:male}
					new_hash[name][data_class] = []

					if !new_hash[name][data_class].include?(data_option)
						#new_hash[name][data_class] << data_optio. #Only adds 1 color / pigeon
						#new_hash[name][data_class]
					end

					#if name.is_value?(data[data_class][data_option]) 	# undefined method `is_value?' for "Theo":String

					# if data[data_class][data_option].include?(name)
					# 	new_hash[name][data_class].push(data[data_class][data_option].key(name)) # undefined method `key' for ["Theo", "Peter Jr.", "Lucky"]:Array 	
					# end

					# new_hash[name][data_class].push(data[data_class].keys) #.flatten #[data_option].key # [name].key 
					# ^ adds ALL data options
			end
		end
	end

	# Loop through 2nd time, add info to data structure: {"Theo"=>{:color=>[], :gender=>[]},

	data.each do |data_class, data_options|
		data_options.each do |data_option, names_array|
			names_array.each do |name|	
				new_hash[name][data_class] <<  data_option.to_s #data[data_class][data_option]
			end
		end
	end

	return new_hash

end



# pigeon_data = {
#   :color => {
#     :purple => ["Theo", "Peter Jr.", "Lucky"],
#     :grey => ["Theo", "Peter Jr.", "Ms. K"],
#     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#     :brown => ["Queenie", "Alex"]
#   },
#   :gender => {
#     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#     :female => ["Queenie", "Ms. K"]
#   },
# }
# puts nyc_pigeon_organizer(pigeon_data)

#OUTPUT : 
# pigeon_list = {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Subway"]
#   },
#   "Peter Jr." => {
#     :color => ["purple", "grey"],

