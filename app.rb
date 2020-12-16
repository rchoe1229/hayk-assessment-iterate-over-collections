require 'pry'

class Company
    attr_accessor :name, :size

    @@all = []

    def initialize(name, size)
        @name = name
        @size = size
        @@all << self
    end

companies = [
    Company.new('Alpha', 30),
    Company.new('Beta', 300),
    Company.new('Delta', 3000),
    Company.new('Charlie', 4000)
]

### Your code below this

    def self.all
        @@all
    end
    
    def self.companies_info
        all.map do |company|
            "#{company.name} - #{company.size}"
            #String Interpolation ^^
        end
    end

    def self.size_sum
        all.reduce(0) do |total, company|
            total + company.size
        end
    end

    def self.size_greater_than_100
        all.select do |company|
            company.size > 100
        end
    end

    def self.beta 
        all.find do |companies|
            companies.name == 'Beta'
        end
    end

    def self.biggest
        all.max_by {|company| company.size}
    end

    def self.size_sort
        sorted = all.sort_by {|company| company.size}
    sorted.reverse
    end
end

binding.pry