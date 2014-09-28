if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => 'AKIAIAD2ALZCY2E2THGA',
      :aws_secret_access_key => '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'
    }
    config.fog_directory     =  'peakswhite'
  end
end