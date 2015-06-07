Fabricator(:attendance) do
  date { Faker::Date.forward(10) }
  present { [true, false].sample }
  student
end
