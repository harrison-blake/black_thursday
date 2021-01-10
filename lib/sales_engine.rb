require 'csv'
require 'pry'
require_relative 'merchant_repository'
require_relative 'item_repository'
require_relative 'invoice_repository'

class SalesEngine
  attr_reader :merchants,
              :items,
              :invoices

  def initialize(locations)
    @merchants = MerchantRepository.new(locations[:merchants])
    @items = ItemRepository.new(locations[:items])
    @invoices = InvoiceRepository.new(locations[:invoices])
  end

  def self.from_csv(locations)
    SalesEngine.new(locations)
  end

  def analyst
    SalesAnalyst.new(self)
  end
end
