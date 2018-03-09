def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, money)
  return pet_shop[:admin][:total_cash] += money
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, sold_pets)
  pet_shop[:admin][:pets_sold] = sold_pets
end

def stock_count(pet_shop)
  return pet_shop[:pets].length
end

# def pets_by_breed(pet_shop, breed)
#   breed_total = []
#     for pet in pet_shop
#     breed_total << pet if pet[:pets][:breed] == breed
#     end
# # for each pet in the array, count the number of pets that are the breed - .count(breed) method
# end

def add_pet_to_stock(pet_shop, new_pet)
  return pet_shop[:pets] << new_pet
end

def customer_pet_count(customer)
  return customer[:pets].count()
end
