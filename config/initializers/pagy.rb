require 'pagy/extras/out_of_range'
require 'pagy/extras/items'

Pagy::VARS[:items] = 10
Pagy::VARS[:out_of_range_mode] = :last_page


