class Genre < ApplicationRecord
	has_many :items

	enum is_active: {
		有効: 0,
		無効: 1,
	}
end
