class SearchService

  def initialize(house)
    @house = house
  end

  def conn
  Faraday.new(
    url: 'https://www.potterapi.com/v1',
    params: { key: ENV['$2a$10$7x9hfaoY/TN.QDU2Jes7XOkWgToDX7sgoOGmY3JRtCAZcV7RZ9gw'] },
  )
end
end
