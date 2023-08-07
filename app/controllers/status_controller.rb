class StatusController < ApplicationController
  def status
    s3 = Aws::S3::Client.new
    resp = s3.list_buckets

    client = Aws::Athena::Client.new
    client.list_databases({catalog_name: 'AwsDataCatalog'})

    render status: 200, json: {hello: 'world'}
  end
end
