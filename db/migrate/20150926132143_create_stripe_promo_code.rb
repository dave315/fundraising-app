class CreateStripePromoCode < ActiveRecord::Migration
  def change
    create_table :stripe_promo_codes do |t|
      t.string :stripe_id, null: false
      t.datetime :stripe_created, null: false
      t.integer :percent_off, null: false
      t.integer :amount_off, null: false
      t.string :stripe_object, null: false
      t.string :valid, null: false
      t.string :duration, null: false
      t.string :redeem_by
      t.string :max_redemptions, null: false
      t.string :times_redeemed, null: false
      t.string :duration_in_months
    end
  end
end
