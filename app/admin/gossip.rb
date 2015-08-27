ActiveAdmin.register Gossip do

permit_params :heading, :description, :author,:gossip_type,:image,:category_id ,:on, :news
form do |f|
  f.inputs do
    f.input :gossip_type, as: :select, :collection => Gossip.gossip_types
    f.input :heading, as: :html_editor, commands: [ :link ], blocks: [ :h3, :p]
    f.input :description, as: :html_editor
    f.input :image, :as => :file
    f.input :author
    f.input :category_id, :input_html => { :value => 2 }, as: :hidden
  end
  f.actions
end

end
