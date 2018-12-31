class AddStripeCustomerTokenToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :stripe_customer_token, :string 
    #to users new column stripe customer token of type string
  end
end
