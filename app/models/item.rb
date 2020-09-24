class Item < ApplicationRecord
	belongs_to :genre

	enum is_sales_active: {
		販売中: 0,
		販売停止中: 1,
	}
end
