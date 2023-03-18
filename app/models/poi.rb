class Poi < ApplicationRecord
  geocoded_by :address
  has_many :trip_pois
  has_many :trips, :through => :trip_pois
  after_validation :geocode, if: :will_save_change_to_address?


  CATEGORIES = ["Fun Roads", "Sights", "Landmarks", "Sleeps", "Eats", "Services"].freeze
  def image_url
    case category
    when "Landmarks" then ActionController::Base.helpers.asset_path("fort.png")
    when "Eats" then ActionController::Base.helpers.asset_path("eats.png")
    when "Fun roads" then ActionController::Base.helpers.asset_path("fun.png")
    when "Sights" then ActionController::Base.helpers.asset_path("sights.png")
    when "Scenic Roads" then ActionController::Base.helpers.asset_path("scenic.png")
    when "Sleeps" then ActionController::Base.helpers.asset_path("sleeps.png")
    when "Services" then ActionController::Base.helpers.asset_path("services.png")
    else
      ActionController::Base.helpers.asset_path("fort.png")
    end
  end

  def self.categories
    CATEGORIES
  end
end
