SirTrevorRails::Blocks::SolrDocumentsBlock.class_eval do
  def alt_text
    exhibit_id = solr_helper.current_exhibit.slug
    "exhibit_#{exhibit_id}_alt_tesim"
  end
end

