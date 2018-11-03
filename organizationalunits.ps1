# brutforce script to make some organizational units

# you need to change "DC=ad,DC=mhodges5,DC=lan" to match your domain and update the ST initials to match or remove them
# ad.mhodges5.lan
Write-Host -ForegroundColor yellow "Creating OUs"
New-ADOrganizationalUnit -Name MH_Computers -Path "DC=AD,DC=mhodges5,DC=lan" -Description "MH Computers"
 New-ADOrganizationalUnit -Name Workstations -Path "OU=MH_Computers,DC=AD,DC=mhodges5,DC=lan"
  New-ADOrganizationalUnit -Name President -Path "OU=Workstations,OU=MH_Computers,DC=AD,DC=mhodges5,DC=lan"
  New-ADOrganizationalUnit -Name Finance -Path "OU=Workstations,OU=MH_Computers,DC=AD,DC=mhodges5,DC=lan"
  New-ADOrganizationalUnit -Name HR -Path "OU=Workstations,OU=MH_Computers,DC=AD,DC=mhodges5,DC=lan"
  New-ADOrganizationalUnit -Name Sales -Path "OU=Workstations,OU=MH_Computers,DC=AD,DC=mhodges5,DC=lan"
  New-ADOrganizationalUnit -Name Legal -Path "OU=Workstations,OU=MH_Computers,DC=AD,DC=mhodges5,DC=lan"
  New-ADOrganizationalUnit -Name IT -Path "OU=Workstations,OU=MH_Computers,DC=AD,DC=mhodges5,DC=lan"
 New-ADOrganizationalUnit -Name Servers -Path "OU=MH_Computers,DC=AD,DC=mhodges5,DC=lan"
  New-ADOrganizationalUnit -Name Hyper-V -Path "OU=Servers,OU=MH_Computers,DC=AD,DC=mhodges5,DC=lan"
  New-ADOrganizationalUnit -Name Exchange -Path "OU=Servers,OU=MH_Computers,DC=AD,DC=mhodges5,DC=lan"
New-ADOrganizationalUnit -Name MH_Groups -Path "DC=AD,DC=mhodges5,DC=lan" -Description "High Level Security Groups"
New-ADOrganizationalUnit -Name MH_Privileged_Accounts -Path "DC=AD,DC=mhodges5,DC=lan" -Description "Privileged Accounts"
New-ADOrganizationalUnit -Name MH_Users -Path "DC=AD,DC=mhodges5,DC=lan" -Description "Non-Privileged Accounts"
Write-Host -ForegroundColor yellow "Done creating OUs"
Write-Host -ForegroundColor yellow ""

Write-Host -ForegroundColor yellow "Creating groups based on department"
New-ADGroup -GroupCategory Security -GroupScope Global -Name President -Path "OU=MH_Groups,DC=AD,DC=mhodges5,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Finance -Path "OU=MH_Groups,DC=AD,DC=mhodges5,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name HR -Path "OU=MH_Groups,DC=AD,DC=mhodges5,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Sales -Path "OU=MH_Groups,DC=AD,DC=mhodges5,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Legal -Path "OU=MH_Groups,DC=AD,DC=mhodges5,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name IT -Path "OU=MH_Groups,DC=AD,DC=mhodges5,DC=lan"
# Create a Leadership group for the President and VPs to access restricted a file share
New-ADGroup -GroupCategory Security -GroupScope Global -Name Leadership -Path "OU=MH_Groups,DC=AD,DC=mhodges5,DC=lan"
Write-Host -ForegroundColor yellow "Done creating groups"
Write-Host -ForegroundColor yellow ""
