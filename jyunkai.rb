require 'json'

START_STATION = "渋谷"
SHOP_STATION_FILE = "shop-station.json"
COST_FILE="eki-eki-cost-simple.json"

INF = 2 ** 28

def read_json(file)
  File.open(file) do |f|
    JSON.load(f)
  end
end

def display_adjacent_graph(ag)
  puts "========== graph =========="
  ag.each do |array|
    puts array.map{|e| e == INF ? "INF" : e}.join(" ")
  end
end

def get_route(ag, fr, i, bit, array)
  array.push(i)
  if !fr[i][bit].nil?
    j, nbit = fr[i][bit]
    get_route(ag, fr, j, nbit, array)
  else
    array
  end
end

def solve_tsp(ag)
  n = ag.size
  dp = Array.new(n).map{Array.new(1 << n, INF)}
  fr = Array.new(n).map{Array.new(1 << n, nil)} # 復元用

  dp[0][0] = 0
  (0...(1 << n)).each do |bit|
    (0...n).each do |i|
      (0...n).each do |j|
        # iからjへ移動
        if ag[i][j] != INF && (bit >> i) % 2 == 0
          now_cost = dp[j][bit | (1 << i)]
          next_cost = dp[i][bit] + ag[i][j]
          if next_cost < now_cost
            dp[j][bit | (1 << i)] = next_cost
            fr[j][bit | (1 << i)] = [i, bit]
          end
        end
      end
    end
  end
  get_route(ag, fr, 0, (1 << n) - 1, [])
end

def change_start_station(route, start_station, stations_to_index)
  id = stations_to_index[start_station]
  new_route = []
  j = route.index(id)
  (0...route.size).each do |k|
    new_route.push(route[(j+k)%(route.size-1)])
  end
  new_route
end

def display_route(route, ag, shop_station_json, stations)
  times = 0
  puts "<html><body>"
  (0...route.size-1).each do |i|
    a = route[i]
    b = route[i+1]
    time = ag[a][b]
    times += time
    a_name = stations[a]
    shop_urls = shop_station_json.select do |shop, s|
      s["最寄駅"] == a_name
    end .map do |shop, s|
      [shop, s["url"]]
    end
    shop_infos = shop_urls.map do |e|
      shop = e[0]
      url = e[1]
      "<a href='#{url}'>#{shop}</a>"
    end .join(",")
    puts "<p>#{stations[a]}(#{shop_infos})</p>"
    puts "<ul>"
    puts "  <li>#{time} minutes (total: #{times} minutes)</li>"
    puts "</ul>"
  end
  a = route[route.size-1]
  a_name = stations[a]
  shop_urls = shop_station_json.select do |shop, s|
    s["最寄駅"] == a_name
  end .map do |shop, s|
    [shop, s["url"]]
  end
  shop_infos = shop_urls.map do |e|
    shop = e[0]
    url = e[1]
    "<a href='#{url}'>#{shop}</a>"
  end .join(",")
  puts "<p>#{stations[a]}(#{shop_infos})</p>"
  puts "<p>total: #{times} minutes</p>"
  puts "</body></html>"
end

# get stations
shop_station_json = read_json(SHOP_STATION_FILE)
eki_eki_cost = read_json(COST_FILE)
stations = []
shop_station_json.each do |shop, s|
  stations << s["最寄駅"]
end
stations = stations.uniq.select{|s| eki_eki_cost.keys.include?(s)}
stations_to_index = stations.each_with_index.to_h

# set cost to adjacent graph or assistant
ag = Array.new(stations.size).map{Array.new(stations.size,INF)}
eki_eki_cost.each do |s1, s2etc|
  i = stations_to_index[s1]
  ag[i][i] = 0
  s2etc.each do |s2, etc|
    j = stations_to_index[s2]
    ag[i][j] = ag[j][i] = etc["time"]
  end
end

route = solve_tsp(ag)

route = change_start_station(route, START_STATION, stations_to_index)

display_route(route, ag, shop_station_json, stations)