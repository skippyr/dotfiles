local module = {}

function module.concatenate_tables(first_table, second_table)
  local master_table = {}
  for _, value in pairs(first_table) do
    master_table[#master_table + 1] = value
  end
  for _, value in pairs(second_table) do
    master_table[#master_table + 1] = value
  end
  return master_table
end

return module
