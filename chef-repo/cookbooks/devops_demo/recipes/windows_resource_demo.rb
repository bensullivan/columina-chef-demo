file "C:\tmp\something.txt" do
  rights :read, "Everyone"
  rights :full_control, "DOMAIN\User"
  action :create
end

powershell "Run Hello World! script" do
  code <<-EOH
  Write-Output "Hello World!"  
  EOH
end
