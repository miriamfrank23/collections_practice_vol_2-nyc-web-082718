def begins_with_r(array)
  array.each do |item|
    if item[0] != "r"
      return false
    end
  end
    return true
end

def contain_a(array)
  new_array = []
array.select do |item|
if item.include?("a")
  new_array << item
end
end
new_array
end

def first_wa(array)
array.find do |item|
item[0] + item[1] == "wa"
end
end

def remove_non_strings(array)
array.delete_if do |item|
  item.class != String
end
end

def count_elements(array)
  array.each do |hash|
    hash[:count] = 0
    name = hash[:name]
    array.each do |new_hash|
      if new_hash[:name] == name
        hash[:count] += 1
      end
    end
  end.uniq
end

def merge_data(keys, values)
  new_array = []
  keys.each do |person_name|
    name = person_name[:first_name]
    values.each do |person_data|
      if person_data[name]
        new_person = person_data[name]
        new_person[:first_name] = name
        new_array << new_person
      end
    end
  end
  new_array
end

def find_cool(array)
  new_array = []
    array.each do |item|
      new_array << item if item[:temperature] == "cool"
    end
    new_array
end

def organize_schools(arg)
schools = {}
 arg.each do |name, location|
   locations = location[:location]
   if schools[locations]
     schools[locations].push(name)
   else
     schools[locations] = []
     schools[locations].push(name)
   end
 end
 schools
end
