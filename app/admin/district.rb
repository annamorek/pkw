ActiveAdmin.register District do

  permit_params :name, :electorate, :mandate, :invalid_vote, :empty, :other, :card, :user_id, :voivodeship_id

end
