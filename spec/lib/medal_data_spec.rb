require "spec_helper"

describe MedalData do
  it "should return all countries" do
    standings = MedalData.new.standings
    expect(standings).to have_at_least(94).countries
  end

  it "should return all expected fields" do
    us_medal_data = MedalData.new.country("united-states")
    expect(us_medal_data).to have_key(:country_name)
    expect(us_medal_data[:country_name]).to eq("United States")
    expect(us_medal_data).to have_key(:rank)
    expect(us_medal_data).to have_key(:gold_count)
    expect(us_medal_data).to have_key(:silver_count)
    expect(us_medal_data).to have_key(:bronze_count)
    expect(us_medal_data).to have_key(:medal_count)
  end
end
