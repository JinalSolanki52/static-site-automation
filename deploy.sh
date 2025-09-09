#!/bin/bash
set -e

# Configuration
BUCKET_NAME="my-static-site-bucket"
CF_DIST_ID="YOUR_CLOUDFRONT_DIST_ID"

echo "🚀 Deploying static site to S3 bucket: $BUCKET_NAME"

# Sync site files to S3
aws s3 sync site/ s3://$BUCKET_NAME --delete

# Invalidate CloudFront cache
echo "🔄 Creating CloudFront invalidation..."
aws cloudfront create-invalidation --distribution-id $CF_DIST_ID --paths "/*"

echo "✅ Deployment complete!"
