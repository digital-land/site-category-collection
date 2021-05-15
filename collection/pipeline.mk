SITE_CATEGORY_DATASET=$(DATASET_DIR)site-category.csv
SITE_CATEGORY_TRANSFORMED_FILES=\
    $(TRANSFORMED_DIR)site-category/b3fa405bbca4a29d64c6493021ff4aa9041998db269f857d422e86c6278fd038.csv\
    $(TRANSFORMED_DIR)site-category/b7c0f17281b1044fddd19a67b75b38e70dc0782d4893fd5a99166ab05f45a94b.csv\
    $(TRANSFORMED_DIR)site-category/d09a3bd6dc1db23961b05bbf00bb788e672a9c0a9c11e2feec83fcdbed3d0c7e.csv

$(TRANSFORMED_DIR)site-category/b3fa405bbca4a29d64c6493021ff4aa9041998db269f857d422e86c6278fd038.csv: collection/resource/b3fa405bbca4a29d64c6493021ff4aa9041998db269f857d422e86c6278fd038
	$(run-pipeline)

$(TRANSFORMED_DIR)site-category/b7c0f17281b1044fddd19a67b75b38e70dc0782d4893fd5a99166ab05f45a94b.csv: collection/resource/b7c0f17281b1044fddd19a67b75b38e70dc0782d4893fd5a99166ab05f45a94b
	$(run-pipeline)

$(TRANSFORMED_DIR)site-category/d09a3bd6dc1db23961b05bbf00bb788e672a9c0a9c11e2feec83fcdbed3d0c7e.csv: collection/resource/d09a3bd6dc1db23961b05bbf00bb788e672a9c0a9c11e2feec83fcdbed3d0c7e
	$(run-pipeline)

$(SITE_CATEGORY_DATASET): $(SITE_CATEGORY_TRANSFORMED_FILES)
	$(build-dataset)

transformed:: $(SITE_CATEGORY_TRANSFORMED_FILES)

dataset:: $(SITE_CATEGORY_DATASET)
