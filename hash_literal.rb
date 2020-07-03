money = {japan: "yen"}
others = { china: "yuan", us: "dollar", germany: "euro"}

currencies.merge!(others)

currencies

currencies = { japan: 'yen' }
others = { japan: '円' }
currencies.merge(others) do |key, old_value, new_value|
  old_value
end
