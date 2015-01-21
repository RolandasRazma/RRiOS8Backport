Pod::Spec.new do |spec|
  spec.name         = 'RRiOS8Backport'
  spec.version      = '0.0.1'
  spec.summary      = 'RRiOS8Backport'
  spec.source_files = 'RRiOS8BackportLocalAuthentication/RRiOS8BackportLocalAuthentication/*.{h,m}', 'RRiOS8BackportCoreLocation/RRiOS8BackportCoreLocation/*.{h,m}'
  spec.requires_arc = true
end
