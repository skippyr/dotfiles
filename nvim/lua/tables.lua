-- A module that contains operations related to tables.

local module = {}

-- Concatenates two tables together and returns the result.
function module.concatenate_tables(first_table, second_table)
  local result_table = {}

  for _, value in pairs(first_table) do
    result_table[#result_table + 1] = value
  end

  for _, value in pairs(second_table) do
    result_table[#result_table + 1] = value
  end

  return result_table
end

return module