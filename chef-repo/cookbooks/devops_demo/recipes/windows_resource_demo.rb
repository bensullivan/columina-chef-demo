#file "C:\tmp\something.txt" do
#  rights :read, "Everyone"
#  rights :full_control, "DOMAIN\User"
#  action :create
#end

#test

powershell "Run Hello World! PowerShell Script" do
  code <<-EOH
  Write-Output "Hello World! from PowerShell"
  EOH
end
