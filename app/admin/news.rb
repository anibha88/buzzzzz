ActiveAdmin.register News do

permit_params :heading, :description, :author,:news_type,:category_id ,:on, :news
form do |f|
  f.inputs do
    f.input :news_type, as: :select, :collection => News.news_type
    f.input :heading, as: :html_editor, commands: [ :link ], blocks: [ :h3, :p]
    f.input :description, as: :html_editor
    f.input :author
    f.input :category_id, :input_html => { :value => 1 }, as: :hidden
  end

  f.actions
end

end
