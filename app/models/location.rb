class Location < ApplicationRecord
  validates :name, presence: true 
  
  def friendly_update
    updated_at.strftime("%b %d, %Y")
  end
  def as_json
    {
      id: self.id,
      name: self.name,
      address: self.address,
      latitude: self.latitude,
      longitude: self.longitude,
      updated_at: self.friendly_update
    }
  end
end
