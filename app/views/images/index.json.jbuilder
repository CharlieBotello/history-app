json.array! @images.each do |image|
  json.id image.id 
  json.location_id image.location_id 
  json.image_url image.image_url
end 

