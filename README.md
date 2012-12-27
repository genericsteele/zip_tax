# ZipTax

This is a Ruby wrapper for working with the [Zip-Tax API]('http://www.zip-tax.com/documentation'). 

## Installation

Add this line to your application's Gemfile:

    gem 'zip_tax'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install zip_tax

## Usage

### ZipTax.key

Before you do anything, make sure you set your Zip-Tax api key.

```ruby
ZipTax.key = "123456789" #sets the api key
```

### ZipTax.request
  
```ruby
ZipTax.request(90210) #returns the raw request, jsonified.

=> { "version" => "v20",
     "rCode"   => 100,
     "results" => [ 
       { "geoPostalCode"   => "90210",
         "geoCity"         => "BEVERLY HILLS",
         "geoCounty"       => "LOS ANGELES",
         "geoState"        => "CA",
         "taxSales"        => 0.087499998509884,
         "taxUse"          => 0.087499998509884,
         "txbService"      => "N",
         "txbFreight"      => "N",
         "stateSalesTax"   => 0.0625,
         "stateUseTax"     => 0.0625,
         "citySalesTax"    => 0,
         "cityUseTax"      => 0,
         "cityTaxCode"     => "",
         "countySalesTax"  => 0.0099999997764826,
         "countyUseTax"    => 0.0099999997764826,
         "countyTaxCode"   => "19",
         "districtSalesTax"=> 0.014999999664724,
         "districtUseTax"  => 0.014999999664724 },
       { "geoPostalCode"   => "90210",
         "geoCity"         => "WESTLAKE",
         "geoCounty"       => "LOS ANGELES",
         "geoState"        => "CA",
         "taxSales"        => 0.087499998509884,
         "taxUse"          => 0.087499998509884,
         "txbService"      => "N",
         "txbFreight"      => "N",
         "stateSalesTax"   => 0.0625,
         "stateUseTax"     => 0.0625,
         "citySalesTax"    => 0,
         "cityUseTax"      => 0,
         "cityTaxCode"     => "19",
         "countySalesTax"  => 0.0099999997764826,
         "countyUseTax"    => 0.0099999997764826,
         "countyTaxCode"   => "19",
         "districtSalesTax"=> 0.014999999664724,
         "districtUseTax"  => 0.014999999664724 }
       ]
   }
```

### ZipTax.rate(zip)

```ruby
ZipTax.rate(90210) #returns the sales tax rate for that zip code
=> 0.087499998509884
```

```ruby
ZipTax.rate(90210, 'CA') #returns the sales tax rate for an item sold in a specific state
=> 0.087499998509884
```

```ruby
ZipTax.rate(90210, 'TX') #returns 0.0 if sales tax isn't neccessary in that state
=> 0.0
```

### ZipTax.info(zip)

```ruby
ZipTax.info(90210) #returns a hash of information about a specified zip code
=> { "geoPostalCode"   => "90210",
     "geoCity"         => "BEVERLY HILLS",
     "geoCounty"       => "LOS ANGELES",
     "geoState"        => "CA",
     "taxSales"        => 0.087499998509884,
     "taxUse"          => 0.087499998509884,
     "txbService"      => "N",
     "txbFreight"      => "N",
     "stateSalesTax"   => 0.0625,
     "stateUseTax"     => 0.0625,
     "citySalesTax"    => 0,
     "cityUseTax"      => 0,
     "cityTaxCode"     => "",
     "countySalesTax"  => 0.0099999997764826,
     "countyUseTax"    => 0.0099999997764826,
     "countyTaxCode"   => "19",
     "districtSalesTax"=> 0.014999999664724,
     "districtUseTax"  => 0.014999999664724 }
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
