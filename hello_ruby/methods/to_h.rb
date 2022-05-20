# learn how to use .to_h && .merge

# p [[:foo, :bar], [1,2]].to_h
input = {
  "shopId": "26d0ffc0-fad5-11e9-9a4a-0242ac110002",
  "item": {
    "merchantId": "26b38cb0-fad5-11e9-bcc7-0242ac110002",
    "itemId": "bdb45ee0-50b5-11ec-af41-0242ac11000b",
    "itemVariantId": "bdb45ee6-50b5-11ec-af41-0242ac11000b",
    "price": "100",
    "quantities": 10
  }
}

shopper ={
  "shopper_id": "tommy"
}

p input
p input.to_h.merge(shopper)

