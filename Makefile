.PHONY: mockgen

mockgen:
	mockgen -package s3mock -destination ./s3mock/s3.go github.com/aws/aws-sdk-go-v2/feature/s3/manager UploadAPIClient,ListObjectsV2APIClient,HeadBucketAPIClient,DownloadAPIClient,DeleteObjectsAPIClient
