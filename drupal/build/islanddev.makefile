core = 7.x
api = 2
projects[drupal][version] = "7.41"

; Contrib Modules
projects[views][version] = "3.13"
projects[ctools][version] = "1.9"
projects[imagemagick][version] = "1.0"
projects[libraries][version] = "2.2"

; Islandora Modules
projects[islandora][type] = "module"
projects[islandora][download][type] = "git"
projects[islandora][download][url] = "git://github.com/Islandora/islandora.git"
projects[islandora][download][ISLANDORA_REVISION_TYPE] = "ISLANDORA_REVISION"

projects[islandora_solution_pack_collection][type] = "module"
projects[islandora_solution_pack_collection][download][type] = "git"
projects[islandora_solution_pack_collection][download][url] = "git://github.com/Islandora/islandora_solution_pack_collection.git"
projects[islandora_solution_pack_collection][download][ISLANDORA_REVISION_TYPE] = "ISLANDORA_REVISION"

projects[islandora_solution_pack_image][type] = "module"
projects[islandora_solution_pack_image][download][type] = "git"
projects[islandora_solution_pack_image][download][url] = "git://github.com/Islandora/islandora_solution_pack_image.git"
projects[islandora_solution_pack_image][download][ISLANDORA_REVISION_TYPE] = "ISLANDORA_REVISION"

projects[islandora_batch][type] = "module"
projects[islandora_batch][download][type] = "git"
projects[islandora_batch][download][url] = "git://github.com/Islandora/islandora_batch.git"
projects[islandora_batch][download][ISLANDORA_REVISION_TYPE] = "ISLANDORA_REVISION"

projects[islandora_solution_pack_compound][type] = "module"
projects[islandora_solution_pack_compound][download][type] = "git"
projects[islandora_solution_pack_compound][download][url] = "git://github.com/Islandora/islandora_solution_pack_compound.git"
projects[islandora_solution_pack_compound][download][ISLANDORA_REVISION_TYPE] = "ISLANDORA_REVISION"

projects[islandora_solution_pack_pdf][type] = "module"
projects[islandora_solution_pack_pdf][download][type] = "git"
projects[islandora_solution_pack_pdf][download][url] = "git://github.com/Islandora/islandora_solution_pack_pdf.git"
projects[islandora_solution_pack_pdf][download][ISLANDORA_REVISION_TYPE] = "ISLANDORA_REVISION"

projects[islandora_pdfjs][type] = "module"
projects[islandora_pdfjs][download][type] = "git"
projects[islandora_pdfjs][download][url] = "git://github.com/Islandora/islandora_pdfjs.git"
projects[islandora_pdfjs][download][ISLANDORA_REVISION_TYPE] = "ISLANDORA_REVISION"

projects[islandora_solr_search][type] = "module"
projects[islandora_solr_search][download][type] = "git"
projects[islandora_solr_search][download][url] = "git://github.com/Islandora/islandora_solr_search.git"
projects[islandora_solr_search][download][ISLANDORA_REVISION_TYPE] = "ISLANDORA_REVISION"

projects[objective_forms][type] = "module"
projects[objective_forms][download][type] = "git"
projects[objective_forms][download][url] = "git://github.com/Islandora/objective_forms.git"
projects[objective_forms][download][ISLANDORA_REVISION_TYPE] = "ISLANDORA_REVISION"

projects[islandora_xml_forms][type] = "module"
projects[islandora_xml_forms][download][type] = "git"
projects[islandora_xml_forms][download][url] = "git://github.com/Islandora/islandora_xml_forms.git"
projects[islandora_xml_forms][download][ISLANDORA_REVISION_TYPE] = "ISLANDORA_REVISION"

projects[islandora_large_image][type] = "module"
projects[islandora_large_image][download][type] = "git"
projects[islandora_large_image][download][url] = "git://github.com/Islandora/islandora_solution_pack_large_image.git"
projects[islandora_large_image][download][ISLANDORA_REVISION_TYPE] = "ISLANDORA_REVISION"

projects[islandora_ocr][type] = "module"
projects[islandora_ocr][download][type] = "git"
projects[islandora_ocr][download][url] = "git://github.com/Islandora/islandora_ocr.git"
projects[islandora_ocr][download][ISLANDORA_REVISION_TYPE] = "ISLANDORA_REVISION"

projects[islandora_solution_pack_newspaper][type] = "module"
projects[islandora_solution_pack_newspaper][download][type] = "git"
projects[islandora_solution_pack_newspaper][download][url] = "git://github.com/Islandora/islandora_solution_pack_newspaper.git"
projects[islandora_solution_pack_newspaper][download][ISLANDORA_REVISION_TYPE] = "ISLANDORA_REVISION"

projects[islandora_newspaper_batch][type] = "module"
projects[islandora_newspaper_batch][download][type] = "git"
projects[islandora_newspaper_batch][download][url] = "git://github.com/Islandora/islandora_newspaper_batch.git"

projects[islandora_paged_content][type] = "module"
projects[islandora_paged_content][download][type] = "git"
projects[islandora_paged_content][download][url] = "git://github.com/Islandora/islandora_paged_content.git"
projects[islandora_paged_content][download][ISLANDORA_REVISION_TYPE] = "ISLANDORA_REVISION"

projects[islandora_openseadragon][type] = "module"
projects[islandora_openseadragon][download][type] = "git"
projects[islandora_openseadragon][download][url] = "git://github.com/Islandora/islandora_openseadragon.git"
projects[islandora_openseadragon][download][ISLANDORA_REVISION_TYPE] = "ISLANDORA_REVISION"

projects[php_lib][type] = "module"
projects[php_lib][download][type] = "git"
projects[php_lib][download][url] = "git://github.com/Islandora/php_lib.git"
projects[php_lib][download][ISLANDORA_REVISION_TYPE] = "ISLANDORA_REVISION"

; Libraries
libraries[tuque][download][type] = "git"
libraries[tuque][download][url] = "git://github.com/Islandora/tuque.git"
libraries[tuque][directory_name] = "tuque"
libraries[tuque][download][branch] = "1.x"
libraries[tuque][type] = "library"

libraries[pdfjs][download][type] = "git"
libraries[pdfjs][download][url] = "git://github.com/mozilla/pdf.js.git"
libraries[pdfjs][directory_name] = "pdfjs"
libraries[pdfjs][download][branch] = "master"
libraries[pdfjs][type] = "library"

libraries[openseadragon][download][type] = "git"
libraries[openseadragon][download][url] = "git://github.com/openseadragon/openseadragon.git"
libraries[openseadragon][directory_name] = "openseadragon"
libraries[openseadragon][download][branch] = "master"
libraries[openseadragon][type] = "library"
