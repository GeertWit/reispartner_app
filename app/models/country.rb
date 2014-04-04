class Country < ActiveRecord::Base
	 searchkick autocomplete: ['title']
end
