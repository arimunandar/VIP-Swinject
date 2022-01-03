# Uncomment the next line to define a global platform for your project
platform :ios, '12.0'

workspace 'VIPModularizationDemo'
use_frameworks!

def project_pods
    pod 'AppsRouter', :git => 'https://github.com/arimunandar/AppsRouter.git', :branch => 'master'
end

target 'VIPModularizationDemo' do
  project_pods

  target 'VIPModularizationDemoTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'VIPModularizationDemoUITests' do
    # Pods for testing
  end
end

target 'VIPFood' do
    project 'Frameworks/VIPFood/VIPFood'
    inherit! :search_paths
    project_pods
end

target 'VIPFoodApi' do
    project 'Frameworks/VIPFoodApi/VIPFoodApi'
    inherit! :search_paths
    project_pods
end

target 'VIPRide' do
    project 'Frameworks/VIPRide/VIPRide'
    inherit! :search_paths
    project_pods
end

target 'VIPRideApi' do
    project 'Frameworks/VIPRideApi/VIPRideApi'
    inherit! :search_paths
    project_pods
end

target 'VIPAuth' do
    project 'Frameworks/VIPAuth/VIPAuth'
    inherit! :search_paths
    project_pods
end

target 'VIPAuthApi' do
    project 'Frameworks/VIPAuthApi/VIPAuthApi'
    inherit! :search_paths
    project_pods
end
