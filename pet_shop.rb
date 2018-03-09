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

def pets_by_breed(pet_shop, breed_search)
  breed_total = []
    for breed in pet_shop[:pets]
    breed_total << breed if breed[:breed] == breed_search
    end
  return breed_total
end
#
# def remove_pet_by_name(pet_shop, name)
#   #if name matches pet_shop[:pets] then remove the entire element from the array
#   #so when I loop over the array, I need to understand how to check inside each hash.
#   #then remove array element
# end

def add_pet_to_stock(pet_shop, new_pet)
  return pet_shop[:pets] << new_pet
end

def customer_pet_count(customer)
  return customer[:pets].count()
end

def add_pet_to_customer(customer_info, pet)
  return customer_info[:pets].push(pet)
end
