powershell "Run Hello World! PowerShell Script" do
  code <<-EOH
  Write-Output "This is the Columina Chef demo"
  EOH
end

# Here we simulate getting the source code instead of going to Git or TFS
cookbook_file "C:/temp/demo_source.ps1" do
  source "demo_source.ps1"
end

# Here is the node specific configuration - the automated deployment in essence
template "C:/temp/config.txt" do
  source "config.txt.erb"
  variables({
    :audience => 'Sunsuper'
  })
end

windows_batch "Run the demo app" do
  code <<-EOH
  powershell -executionpolicy bypass -File C:/temp/demo_source.ps1
  EOH
end
