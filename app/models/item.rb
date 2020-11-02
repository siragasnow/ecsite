class Item < ApplicationRecord
	belongs_to :genre
	has_many :cart_items, dependent: :destroy

	enum is_sales_active:{
		販売中: 0,
		販売停止中: 1,
	}
end
