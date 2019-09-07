SirTrevorRails::Blocks::SolrDocumentsBlock.class_eval do
  # this is a helper for use of a custom exhibit field
  # eg., add an exhibit field with label Alt Text, which will result in solr field exhibit_exhibitname_alt-text_tesim
  # be sure to create it in the UI when exhibit is created
  # to use in a solr_documents_block-based widget, perhaps something like:
  # image_tag(block_options[:full_image_url], alt: doc_presenter.field_value(solr_documents_block.alt_text('alt-text')))
  # TODO auto generate the field so it doesn't have to be created manually by the curator
  # This assembles the field name, since it changes from exhibit to exhibit
  def exhibit_field(field_name)
    exhibit_id = solr_helper.current_exhibit.slug
    "exhibit_#{exhibit_id}_#{field_name}_tesim"
  end
end

