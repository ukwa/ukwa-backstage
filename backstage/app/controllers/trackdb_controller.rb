# frozen_string_literal: true
class TrackdbController < CatalogController

  def configure_solr_url
    blacklight_config.connection_config[:url] = ENV['TRACKDB_SOLR_URL'] || "http://trackdb:8983/solr/trackdb"
  end

end

