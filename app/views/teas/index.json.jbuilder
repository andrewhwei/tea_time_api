json.array! @teas.each do |tea|
  json.name tea.name
  json.origin tea.origin
  json.weight tea.weight
  json.in_stock tea.in_stock
end