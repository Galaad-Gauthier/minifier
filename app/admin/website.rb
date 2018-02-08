ActiveAdmin.register Website do
  permit_params :url

  index do
    selectable_column
    id_column
    column :token
    column :url

    column 'Visitors' do |w|
      link_to w.visitors.count, admin_visitors_path(q: { website_id_eq: w.id })
    end

    column :created_at
    column :updated_at

    actions
  end

  filter :url

end
