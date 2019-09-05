SirTrevorRails::Blocks::SolrDocumentsBlock.class_eval do
  # enable use of custom exhibit field for alt text
  # use label Alt Text, which will result in solr field exhibit_exhibitname_alt-text_tesim
  # be sure to create it in the UI when exhibit is created
  # TODO auto generate the field
  # This assembles the field name, since it changes from exhibit to exhibit
  def alt_text
    exhibit_id = solr_helper.current_exhibit.slug
    "exhibit_#{exhibit_id}_alt-text_tesim"
  end
end

