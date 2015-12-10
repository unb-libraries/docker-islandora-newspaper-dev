FROM unblibraries/drupal:apache
MAINTAINER Jacob Sanford <jsanford_at_unb.ca>

ENV DRUPAL_SITE_ID islanddev
ENV ISLANDORA_REVISION HEAD
ENV ISLANDORA_REVISION_TYPE refspec
ENV DJATOKA_IP 192.168.2.22

# Islandora modules to enable on build.
ENV ISLANDORA_MODULES="islandora islandora_basic_collection islandora_basic_image islandora_pdf islandora_solr islandora_pdfjs xml_forms islandora_paged_content islandora_newspaper islandora_newspaper_batch islandora_large_image islandora_ocr islandora_openseadragon islandora_internet_archive_bookreader"

# Install OS packages and required libraries for solution packs.
RUN apt-get update && \
 DEBIAN_FRONTEND=noninteractive apt-get install -y php5-xsl dnsutils imagemagick poppler-utils ghostscript unzip tesseract-ocr && \
  apt-get clean

# Copy the makefile and install profile for building.
RUN mkdir -p ${TMP_DRUPAL_BUILD_DIR}/islandora
ADD build/${DRUPAL_SITE_ID}.makefile ${TMP_DRUPAL_BUILD_DIR}/${DRUPAL_SITE_ID}.makefile
ADD build/${DRUPAL_SITE_ID}/${DRUPAL_SITE_ID}.info ${TMP_DRUPAL_BUILD_DIR}/${DRUPAL_SITE_ID}/${DRUPAL_SITE_ID}.info
ADD build/${DRUPAL_SITE_ID}/${DRUPAL_SITE_ID}.install ${TMP_DRUPAL_BUILD_DIR}/${DRUPAL_SITE_ID}/${DRUPAL_SITE_ID}.install
ADD build/${DRUPAL_SITE_ID}/${DRUPAL_SITE_ID}.profile ${TMP_DRUPAL_BUILD_DIR}/${DRUPAL_SITE_ID}/${DRUPAL_SITE_ID}.profile

# Set appropriate refspec/tag for build
RUN sed -i "s/ISLANDORA_REVISION/${ISLANDORA_REVISION}/g" "${TMP_DRUPAL_BUILD_DIR}/$DRUPAL_SITE_ID.makefile"
RUN sed -i "s/ISLANDORA_REVISION_TYPE/${ISLANDORA_REVISION_TYPE}/g" "${TMP_DRUPAL_BUILD_DIR}/$DRUPAL_SITE_ID.makefile"

# Remove the default site and drush-make our own.
ENV DRUSH_MAKE_TMPROOT ${TMP_DRUPAL_BUILD_DIR}/webroot
RUN rm -rf ${DRUSH_MAKE_TMPROOT} && \
  drush make --concurrency=${DRUSH_MAKE_CONCURRENCY} --yes ${DRUSH_MAKE_OPTIONS} "${TMP_DRUPAL_BUILD_DIR}/$DRUPAL_SITE_ID.makefile" ${DRUSH_MAKE_TMPROOT} && \
  mv ${TMP_DRUPAL_BUILD_DIR}/${DRUPAL_SITE_ID} ${DRUSH_MAKE_TMPROOT}/profiles/

# Install Kakadu Bins
WORKDIR /tmp
RUN mkdir kakadu && cd kakadu && curl -O http://kakadusoftware.com/wp-content/uploads/2014/06/KDU77_Demo_Apps_for_Linux-x86-64_150710.zip && unzip KDU77_Demo_Apps_for_Linux-x86-64_150710.zip && cd KDU77_Demo_Apps_for_Linux-x86-64_150710 && mv * /usr/local/bin
ENV LD_LIBRARY_PATH /usr/local/bin

# SQL queries to enable search fields
ADD data/islandora_search_settings.sql.txt /tmp/islandora_search_settings.sql.txt

# Phusion/baseimage inits.
CMD ["/sbin/my_init"]
ADD init/ /etc/my_init.d/
RUN chmod -v +x /etc/my_init.d/*.sh
