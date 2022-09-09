ActiveAdmin.register Account do
    permit_params :supplier_id, :account_number
    filter :account_number, as: :select, collection: Account.all.map{|i| i.account_number}
    
    
    # index do
    #     selectable_column
    #     column :account_number
    #     column :supplier_id
    #     # column "Role" do |acc|
    #     #     acc.role
    #     # end
    #     # column :email
    #     # column :activated
    #     # column :country_name
    #     # actions
    #   end

      form do |f|
        f.inputs do
            f.input :account_number
            f.input :supplier
          end
        f.actions
      end

end



