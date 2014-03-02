CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => ENV["SF_AWS_ACCESS_KEY_ID"],
    :aws_secret_access_key  => ENV["SF_AWS_SECRET_KEY"],
    :region                 => 'us-west-1'
  }
  config.fog_directory  = 'starfruit'
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}
  config.cache_dir = "#{Rails.root}/tmp/uploads"
end