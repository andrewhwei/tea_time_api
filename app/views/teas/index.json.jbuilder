json.array! @teas.each do |tea|
  json.partial! 'tea.json.jbuilder', tea: tea
end