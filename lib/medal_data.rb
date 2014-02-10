class MedalData

  def initialize
    raise "Environment doesn't contain Kimono API Key.  Does .env.#{Padrino.env} exist?" unless(ENV['KIMONO_API_KEY'])
    @kimono_data_url = "http://www.kimonolabs.com/api/26dkhbb0?apikey=#{ENV['KIMONO_API_KEY']}"
  end

  def standings
    @data ||= data
    data_array = []
    data.each { |k,v| data_array << v.merge({country_id: k}) }
    data_array.sort_by { |country_hash| country_hash[:rank] }
  end

  def country(country_id)
    @data ||= data
    @data[country_id]
  end

  private

  def data
    response = RestClient.get @kimono_data_url
    raw_data = JSON.parse(response)
    data = {}
    raw_data["results"]["collection1"].each do |entry|
      country_id = entry["country"]["href"][33..-1] # parse name from http://www.sochi2014.com/en/team-turkey
      data[country_id] = {
        country_name: entry["country"]["text"],
        rank: entry["rank"].sub(/^=*/, "").to_i,
        gold_count: entry["gold_count"].to_i,
        silver_count: entry["silver_count"].to_i,
        bronze_count: entry["bronze_count"].to_i,
        medal_count: entry["total_count"].to_i
      }
    end
    data
  end
end
