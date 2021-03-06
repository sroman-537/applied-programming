require "forecast_io"
require "httparty"

# configure the Dark Sky API with your API key
ForecastIO.api_key = "0adf9455fa4ccdbcd3cd91b7814d2cbe"

# do the heavy lifting, use Global Hub lat/long
forecast = ForecastIO.forecast(42.0574063,-87.6722787).to_hash

url = "https://newsapi.org/v2/top-headlines?country=us&apiKey=05420b4bdf204018b81ef80b92aa3e2a"
news = HTTParty.get(url).parsed_response.to_hash
# news is now a Hash you can pretty print (pp) and parse for your output


# pp = pretty print
# use instead of `puts` to make reading a hash a lot easier
# e.g. `pp forecast`

pp news

# Example output:
#
# In Chicago, it is currently 33.89 degress and Clear
# Extended forecast:
# A high temperature of 36.47 and Possible flurries in the afternoon.
# A high temperature of 33.98 and Mostly cloudy throughout the day.
# A high temperature of 33.94 and Possible light snow until evening.
# A high temperature of 32.73 and Mostly cloudy throughout the day.
# A high temperature of 32.51 and Partly cloudy throughout the day.
# A high temperature of 40.42 and Clear throughout the day.
# A high temperature of 23.21 and Overcast throughout the day.
# A high temperature of 29.12 and Clear throughout the day.