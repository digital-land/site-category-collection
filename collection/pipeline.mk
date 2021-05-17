SITE_CATEGORY_DATASET=$(DATASET_DIR)site-category.csv
SITE_CATEGORY_TRANSFORMED_FILES=\
    $(TRANSFORMED_DIR)site-category/b7c0f17281b1044fddd19a67b75b38e70dc0782d4893fd5a99166ab05f45a94b.csv

$(TRANSFORMED_DIR)site-category/b7c0f17281b1044fddd19a67b75b38e70dc0782d4893fd5a99166ab05f45a94b.csv: collection/resource/b7c0f17281b1044fddd19a67b75b38e70dc0782d4893fd5a99166ab05f45a94b
	$(run-pipeline)

$(SITE_CATEGORY_DATASET): $(SITE_CATEGORY_TRANSFORMED_FILES)
	$(build-dataset)

transformed:: $(SITE_CATEGORY_TRANSFORMED_FILES)

dataset:: $(SITE_CATEGORY_DATASET)
