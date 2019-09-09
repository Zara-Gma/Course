# Function for the cost of ground shipping. Takes weight parameter, and returns the cost of shipping a package of that weight.

def ground_shipping_cost(weight):
    if weight <= 2:
        price_per_pound = 1.50
    elif weight <= 6:
        price_per_pound = 3.00
    elif weight <= 10:
        price_per_pound = 4.00
    else:
        price_per_pound = 4.75

    return 20 + (price_per_pound * weight)

print(ground_shipping_cost(8.4))
# 8.4 lb x $4.00 + $20.00 = $53.60 lb

# Premium Ground Shipping
# Flat charge: $125.00
premium_shipping_cost = 125.00


# Function for the cost of drone shipping. Takes weight parameter, and returns the cost of shipping a package of that weight.
def drone_shipping_cost(weight):
    if weight <= 2:
        price_per_pound = 4.50
    elif weight <= 6:
        price_per_pound = 9.00
    elif weight <= 10:
        price_per_pound = 12.00
    else:
        price_per_pound = 14.75

    return price_per_pound * weight

# A package that weighs 1.5 pounds should cost $6.75 to ship by drone
print(drone_shipping_cost(1.5))

# Using those two functions for ground shipping cost and drone shipping cost, as well as the cost of premium ground shipping, write a function that takes one parameter, weight and prints a statement that tells the user
# The shipping method that is cheapest.
# How much it would cost to ship a package of said weight using this method.

def cheapest_shipping(weight):
    premium = premium_shipping_cost
    ground = ground_shipping_cost(weight)
    drone = drone_shipping_cost(weight)

    if ground < premium and ground < drone:
        method = "standard ground"
        cost = ground
    elif premium < ground and premium < drone:
        method = "premium ground"
        cost = premium
    else:
        method = "drone"
        cost = drone

    print(
        "The cheapest option available is $%.2f with %s shipping."
        % (cost, method)
    )

cheapest_shipping(4.8)
cheapest_shipping(41.5)
