ActiveAdmin.register Vote do

  permit_params :vote, :commitee_id, :district_id

end
