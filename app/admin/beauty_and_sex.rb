ActiveAdmin.register BeautyAndSex do

permit_params :tip_name, :tip_description, :tip_author,:beauty_and_sex_type,:image,:tip_related_to,:category_id ,:on, :beauty_and_sex
form do |f|
  f.inputs do
    f.input :beauty_and_sex_type, as: :select, :collection => BeautyAndSex.types
    f.input :tip_related_to , as: :select, :collection =>['foo', 'bar', 'baz']
    f.input :tip_name, as: :html_editor, commands: [ :link ], blocks: [ :h3, :p]
    f.input :tip_description, as: :html_editor
    f.input :image, :as => :file
    f.input :tip_author
    f.input :category_id, :input_html => { :value => 3 }, as: :hidden
  end
  f.actions
end


end
