#!/usr/bin/env bash

# Run cron and clear cache.

drush --root=${DRUPAL_ROOT} --uri=default vset islandora_kakadu_url /usr/local/bin/kdu_compress
drush --root=${DRUPAL_ROOT} --uri=default vset islandora_large_image_uncompress_tiff 1
drush --root=${DRUPAL_ROOT} --uri=default vset islandora_use_kakadu 1
drush --root=${DRUPAL_ROOT} --uri=default vset islandora_paged_content_djatoka_url http://${DJATOKA_IP}:8888
echo '{"name": {"none": "none","islandora_internet_archive_bookreader": "islandora_internet_archive_bookreader"},"default": "islandora_internet_archive_bookreader"}' | drush --root=${DRUPAL_ROOT} --uri=default vset --format=json islandora_newspaper_issue_viewers -
echo '{"name": {"none": "none","islandora_openseadragon": "islandora_openseadragon"},"default": "islandora_openseadragon"}' | drush --root=${DRUPAL_ROOT} --uri=default vset --format=json islandora_large_image_viewers -
echo '{"name": {"none": "none","islandora_openseadragon": "islandora_openseadragon"},"default": "islandora_openseadragon"}' | drush --root=${DRUPAL_ROOT} --uri=default vset --format=json islandora_large_image_viewers -
echo "{\"debugMode\": 0,\"djatokaServerBaseURL\": \"http:\/\/${DJATOKA_IP}:8888\/resolver\",\"animationTime\": \"1.5\",\"blendTime\": \"0.1\",\"alwaysBlend\": 0,\"autoHideControls\": 1,\"immediateRender\": 0,\"wrapHorizontal\": 0,\"wrapVertical\": 0,\"wrapOverlays\": 0,\"panHorizontal\": 1,\"panVertical\": 1,\"showNavigator\": 1,\"minZoomImageRatio\": \"0.8\",\"maxZoomPixelRatio\": \"2\",\"visibilityRatio\": \"0.5\",\"springStiffness\": \"5.0\",\"imageLoaderLimit\": \"5\",\"clickTimeThreshold\": \"300\",\"clickDistThreshold\": \"5\",\"zoomPerClick\": \"2.0\",\"zoomPerScroll\": \"1.2\",\"zoomPerSecond\": \"2.0\",\"defaultZoomLevel\": \"1.0\"    }" | drush --root=${DRUPAL_ROOT} --uri=default vset --format=json islandora_openseadragon_settings -
drush --root=${DRUPAL_ROOT} --uri=default vset islandora_internet_archive_bookreader_compression 6

# Setup search fields
drush --root=${DRUPAL_ROOT} --uri=default sql-cli < /tmp/islandora_search_settings.sql.txt

# Add search sidebar
drush --root=${DRUPAL_ROOT} --uri=default sql-query "UPDATE block SET status=1, weight=-13, region='sidebar_first' WHERE module='islandora_solr' AND delta='simple'"

# Search settings
drush --root=${DRUPAL_ROOT} --uri=default vset islandora_newspaper_parent_issue_solr_field 'RELS_EXT_isMemberOf_uri_ms'
drush --root=${DRUPAL_ROOT} --uri=default vset islandora_paged_content_hide_pages_solr 0
drush --root=${DRUPAL_ROOT} --uri=default vset islandora_paged_content_solr_fq '-RELS_EXT_isPageOf_uri_ms:[* TO *]'
drush --root=${DRUPAL_ROOT} --uri=default vset islandora_solr_allow_preserve_filters 0
drush --root=${DRUPAL_ROOT} --uri=default vset islandora_solr_base_filter ''
drush --root=${DRUPAL_ROOT} --uri=default vset islandora_solr_base_query '*:*'                                                                                                                                                                                              |
drush --root=${DRUPAL_ROOT} --uri=default vset islandora_solr_base_sort ''
drush --root=${DRUPAL_ROOT} --uri=default vset islandora_solr_content_model_field 'RELS_EXT_hasModel_uri_ms'
drush --root=${DRUPAL_ROOT} --uri=default vset islandora_solr_datastream_id_field 'fedora_datastreams_ms'
drush --root=${DRUPAL_ROOT} --uri=default vset islandora_solr_debug_mode 0
drush --root=${DRUPAL_ROOT} --uri=default vset islandora_solr_dismax_allowed 1
drush --root=${DRUPAL_ROOT} --uri=default vset islandora_solr_facet_max_limit '20'
drush --root=${DRUPAL_ROOT} --uri=default vset islandora_solr_facet_min_limit '2'
drush --root=${DRUPAL_ROOT} --uri=default vset islandora_solr_facet_soft_limit '10'
drush --root=${DRUPAL_ROOT} --uri=default vset islandora_solr_limit_result_fields 0
drush --root=${DRUPAL_ROOT} --uri=default vset islandora_solr_member_of_collection_field 'RELS_EXT_isMemberOfCollection_uri_ms'
drush --root=${DRUPAL_ROOT} --uri=default vset islandora_solr_member_of_field 'RELS_EXT_isMemberOf_uri_ms'
drush --root=${DRUPAL_ROOT} --uri=default vset islandora_solr_namespace_restriction ''
drush --root=${DRUPAL_ROOT} --uri=default vset islandora_solr_num_of_results '20'
drush --root=${DRUPAL_ROOT} --uri=default vset islandora_solr_object_label_field 'fgs_label_s'
drush --root=${DRUPAL_ROOT} --uri=default vset islandora_solr_primary_display 'table'
drush --root=${DRUPAL_ROOT} --uri=default vset islandora_solr_query_fields 'dc.title^5 dc.subject^2 dc.description^2 dc.creator^2 dc.contributor^1 dc.type'
drush --root=${DRUPAL_ROOT} --uri=default vset islandora_solr_search_boolean 'user'
drush --root=${DRUPAL_ROOT} --uri=default vset islandora_solr_search_navigation 0
drush --root=${DRUPAL_ROOT} --uri=default vset islandora_solr_table_profile_display_row_no 0                                                                                                                                                                                                    |
drush --root=${DRUPAL_ROOT} --uri=default vset islandora_solr_table_profile_table_class 0
drush --root=${DRUPAL_ROOT} --uri=default vset islandora_solr_tabs__active_tab 'edit-default-display-settings'
drush --root=${DRUPAL_ROOT} --uri=default vset islandora_solr_use_ui_qf 0
drush --root=${DRUPAL_ROOT} --uri=default vset --format=json islandora_solr_primary_display_table '{"islandora_solr_primary_display_table":{"weight":{"default":"0","grid":"0","table":"0"},"default":"table","enabled":{"default":"default","grid":0,"table":"table"}}}'
drush --root=${DRUPAL_ROOT} --uri=default vset --format=json islandora_solr_secondary_display '{"islandora_solr_secondary_display":{"csv":0,"rss":0}}'
