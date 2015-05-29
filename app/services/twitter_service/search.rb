module TwitterService
  class Search
    include TwitterService::Client

    def search(city)
      city_bounding_box = CONSTANTS[city.downcase]
      connection.search(FOOD_TAGS, geocode: city_bounding_box, count: 2000)
    end

  end
end