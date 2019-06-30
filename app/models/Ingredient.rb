class Ingredient

	@@all = []

	def initialize(name = nil)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end



	def self.most_common_allergen

		max_i = 0
		max_count = 0
		allergen_counts = self.all.map{|ingredient| Allergy.all.select{|allergy| allergy.ingredient == ingredient}.length}
		allergen_counts.each_with_index do |i, allergy_count|
			if allergy_count > max_count
				max_i = i
			end
		end

		self.all[max_i]
	end

end
