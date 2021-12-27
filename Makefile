.PHONY: mockgen

mockgen:
	mockgen -package s3mock -destination ./s3/upload_api.go github.com/aws/aws-sdk-go-v2/feature/s3/manager UploadAPIClient
	mockgen -package s3mock -destination ./s3/list_objects_v2_api.go github.com/aws/aws-sdk-go-v2/feature/s3/manager ListObjectsV2APIClient
	mockgen -package s3mock -destination ./s3/head_bucket_api.go github.com/aws/aws-sdk-go-v2/feature/s3/manager HeadBucketAPIClient
	mockgen -package s3mock -destination ./s3/download_api.go github.com/aws/aws-sdk-go-v2/feature/s3/manager DownloadAPIClient
	mockgen -package s3mock -destination ./s3/delete_objects_api.go github.com/aws/aws-sdk-go-v2/feature/s3/manager DeleteObjectsAPIClient
