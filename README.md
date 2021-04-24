Rails version: 5.2.4.4
Ruby version: 2.5.8
 rails g model sales_figure year:integer geo_code jurisdiction zipcode total_sales:integer median_value:float 
 mean_value:float sales_inside_pfa sales_inside_pfa:integer median_value_in_pfa:float mean_value_in_pfa:float sales_outside_pfa:integer median_value_out_pfa:float mean_value_out_pfa:float latitude:float longitude:float

rails g task seed import_maryland_residential_sales


 bundle exec rake db:seed:import_maryland_residential_sales

  rails g controller residential index

rails c
  zipcoded = "Maryland 21502 (39.64, -78.77)"
 => "Maryland 21502 (39.64, -78.77)" 
2.5.8 :004 > zipcoded[0]
 => "M" 
2.5.8 :005 > latlang = zipcoded.match(/.*(\d{2}\.\d*), (-\d{2}\.\d*).*/)
 => #<MatchData "Maryland 21502 (39.64, -78.77)" 1:"39.64" 2:"-78.77"> 
2.5.8 :006 > latland[1]
Traceback (most recent call last):
        1: from (irb):6
NameError (undefined local variable or method `latland' for main:Object)
Did you mean?  latlang
2.5.8 :007 > latlang[1]
 => "39.64" 
2.5.8 :008 > latlang[0]
