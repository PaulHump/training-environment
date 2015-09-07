require 'rubygems'
require 'watir-webdriver'
require 'rspec/expectations'
require 'test/unit'
require 'page-object'

World(PageObject::PageFactory)

include Test::Unit::Assertions
