require 'aws/s3'

BUCKET_NAME = 'landskape-pictures'
ACCESS_KEY_ID = 'AKIAJZMC46TST3BTHQIA'
SECRET_ACCESS_KEY = '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'

AWS::S3::Base.establish_connection!(
  :access_key_id     => ACCESS_KEY_ID,
  :secret_access_key => SECRET_ACCESS_KEY
)

landskape_bucket = AWS::S3::Bucket.find(BUCKET_NAME)
puts landskape_bucket.objects.size
puts landskape_bucket.objects.name

filename = 'maps-all-markers.html'

AWS::S3::S3Object.store(filename,open(filename),BUCKET_NAME)

puts landskape_bucket.objects.size

