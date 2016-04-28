# Uncomment this line to define a global platform for your project
platform :ios, '8.0'
# Uncomment this line if you're using Swift
use_frameworks!

def testing_pods
  pod 'Quick'
  pod 'Nimble'
  pod 'RxBlocking', '~> 2.0'
  pod 'RxTests',    '~> 2.0'
end

target 'SwinjectMVVM' do
  pod "Himotoki", "~> 2.0"
  pod 'RxSwift',    '~> 2.0'
  pod 'RxCocoa',    '~> 2.0'
  pod 'Alamofire', '~> 3.3'
end

target 'SwinjectMVVMTests' do
  testing_pods
end

target 'SwinjectMVVMUITests' do

end

