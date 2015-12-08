#!/usr/bin/env bash

# Run cron and clear cache.

drush --root=${DRUPAL_ROOT} --uri=default vset islandora_kakadu_url /usr/local/bin/kdu_compress
drush --root=${DRUPAL_ROOT} --uri=default vset islandora_large_image_uncompress_tiff 1
drush --root=${DRUPAL_ROOT} --uri=default vset islandora_use_kakadu 1
drush --root=${DRUPAL_ROOT} --uri=default vset islandora_paged_content_djatoka_url http://${DJATOKA_IP}:8888
echo '{"name": {"none": "none","islandora_openseadragon": "islandora_openseadragon"},"default": "islandora_openseadragon"}' | drush --root=${DRUPAL_ROOT} --uri=default vset --format=json islandora_newspaper_page_viewers -
echo '{"name": {"none": "none","islandora_openseadragon": "islandora_openseadragon"},"default": "islandora_openseadragon"}' | drush --root=${DRUPAL_ROOT} --uri=default vset --format=json islandora_large_image_viewers -
echo "{\"debugMode\": 0,\"djatokaServerBaseURL\": \"http:\/\/${DJATOKA_IP}:8888\/resolver\",\"animationTime\": \"1.5\",\"blendTime\": \"0.1\",\"alwaysBlend\": 0,\"autoHideControls\": 1,\"immediateRender\": 0,\"wrapHorizontal\": 0,\"wrapVertical\": 0,\"wrapOverlays\": 0,\"panHorizontal\": 1,\"panVertical\": 1,\"showNavigator\": 1,\"minZoomImageRatio\": \"0.8\",\"maxZoomPixelRatio\": \"2\",\"visibilityRatio\": \"0.5\",\"springStiffness\": \"5.0\",\"imageLoaderLimit\": \"5\",\"clickTimeThreshold\": \"300\",\"clickDistThreshold\": \"5\",\"zoomPerClick\": \"2.0\",\"zoomPerScroll\": \"1.2\",\"zoomPerSecond\": \"2.0\",\"defaultZoomLevel\": \"1.0\"    }" | drush --root=${DRUPAL_ROOT} --uri=default vset --format=json islandora_openseadragon_settings -
