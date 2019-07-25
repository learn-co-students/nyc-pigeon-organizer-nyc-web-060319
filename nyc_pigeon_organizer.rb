def nyc_pigeon_organizer(data)
  new_hash = {}

  data.each do |attribute, attribute_hash|
    attribute_hash.each do |quality, quality_array|
      quality_array.each do |name|
        if new_hash.keys.include?(name)
          if new_hash[name].keys.include?(attribute)
            new_hash[name][attribute] << quality.to_s
          else
            new_hash[name][attribute] = [quality.to_s]
          end
        else
          new_hash[name] = {attribute => [quality.to_s]}
        end
      end
    end
  end
  return new_hash
end
