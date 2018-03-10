def pet_shop_name(shop)
  return shop[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, money)
  return shop[:admin][:total_cash] += money
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, sold_pets)
  shop[:admin][:pets_sold] = sold_pets
end

def stock_count(shop)
  return shop[:pets].length
end

def pets_by_breed(shop, breed_search)
  breed_total = []
    for each_pet in shop[:pets]
    breed_total << each_pet if each_pet[:breed] == breed_search
    end
  return breed_total
end

def find_pet_by_name(shop, expected_name)
result = nil
    for pet in shop[:pets]
      if pet[:name] == expected_name
        result = pet
      end
    end
  return result
end


def remove_pet_by_name(shop, pet_name)
  number_pets = shop[:pets].length #this is the length of the pets array
  max_index = number_pets - 1 #so there are six elements in the array, but if call 6 there is nothing there and it will return a sad face. So we need to remove 1 to ensure that the element will equal its index position. See the loop below to account for the 0 element in the array. Clever!

  for index in 0..max_index
    pet_at_index = shop[:pets][index] #this is an integer
    if pet_at_index[:name] == pet_name
      shop[:pets].delete_at(index) #This deletes the pet from the pets array using its index number. 
      return #This is the same as a break to get out of the for loop.
    end
  end
end

def add_pet_to_stock(shop, new_pet)
  return shop[:pets] << new_pet
end

def customer_pet_count(customer)
  return customer[:pets].count()
end

def add_pet_to_customer(customer_info, pet)
  return customer_info[:pets].push(pet)
end

def customer_can_afford_pet(customer_info, pet)
  return false if pet == nil
  customer_info[:cash] - pet[:price] > 0 ? true : false
end

def sell_pet_to_customer(shop, pet_to_sell, customer_buying)
  affordability = customer_can_afford_pet(customer_buying, pet_to_sell)

  if affordability == true
    customer_buying[:pets].push(pet_to_sell)
    shop[:admin][:pets_sold] += 1
    shop[:admin][:total_cash] += pet_to_sell[:price]
  else
    customer_buying[:pets]
    shop[:admin][:pets_sold]
    shop[:admin][:total_cash]
  end
end
#I was returning NoMethodError: undefined method `[]' for nil:NilClass for ages and knew that I was trying to call an array method on nil, but couldn't see where it was happening. I realised it's in the customer_can_afford_pet function - if you pass in a pet == nil, then the function didn't account for this and it was trying to call pet[:price], which is obviously not compatible if pet == nil.
