SITE_CATEGORY_DATASET=$(DATASET_DIR)site-category.csv
SITE_CATEGORY_TRANSFORMED_FILES=\
    $(TRANSFORMED_DIR)site-category/b3fa405bbca4a29d64c6493021ff4aa9041998db269f857d422e86c6278fd038.csv

$(TRANSFORMED_DIR)site-category/b3fa405bbca4a29d64c6493021ff4aa9041998db269f857d422e86c6278fd038.csv: collection/resource/b3fa405bbca4a29d64c6493021ff4aa9041998db269f857d422e86c6278fd038
	$(run-pipeline)

$(SITE_CATEGORY_DATASET): $(SITE_CATEGORY_TRANSFORMED_FILES)
	$(build-dataset)

transformed:: $(SITE_CATEGORY_TRANSFORMED_FILES)

dataset:: $(SITE_CATEGORY_DATASET)
