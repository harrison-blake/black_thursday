class Customer
  attr_reader:id,
             :created_at,
             :customer_repo
  attr_accessor:first_name,
               :last_name,
               :updated_at
  def initialize(data, customer_repo)
    @id = data[:id].to_i
    @first_name = data[:first_name]
    @last_name = data[:last_name]
    @created_at = Time.parse(data[:created_at])
    @updated_at = Time.parse(data[:updated_at])
    @customer_repo = customer_repo
  end
end 
