## requires
require 'sinatra'
require 'rubygems'
require 'sinatra/base'
require 'json'
require 'time'
require 'pp'

### datamapper requires
require 'data_mapper'
require 'dm-types'
require 'dm-timestamps'
require 'dm-validations'

class Product
  include DataMapper::Resource

	property :id, Serial
	property :name, String, :required => true
	property :brand, String
        property :description, String
        property :quantity, Integer
	property :price, Float

        belongs_to :subcategory, :key => true
end

class Category
  include DataMapper::Resource

        property :id, Serial
        property :name, String, :required => true
        property :description, String

        has n, :subcategories
end

class Subcategory
  include DataMapper::Resource

	property :id, Serial
	property :name, String, :required => true
	property :description, String

	belongs_to :category, :key => true

end

DataMapper.setup(:default, "sqlite3:test.db")

## create schema if necessary
DataMapper.auto_upgrade!
