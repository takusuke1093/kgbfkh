class AddConfirmableToDevise < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :admin, :boolean, default: false
    if current_user.admin? # current_userメソッドがnilとなるページも考慮し、current_user.try(:admin?)でもいいらしい
      #do something
      end
  end
end
