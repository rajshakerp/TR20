
Configuration DeployWebServer
{
  param (  
  [string[]]$MachineName = "localhost"
  )

  Node localhost
  {
	   
    foreach ($Feature in @("AS-Ent-Services",`
                          "AS-TCP-Port-Sharing",`
                          "AS-Web-Support",`
                          "AS-WAS-Support",`
                          "AS-HTTP-Activation",`
                          "AS-MSMQ-Activation",`
                          "AS-Named-Pipes",`
                          "AS-TCP-Activation",`
                          "FileAndStorage-Services",`
                          "File-Services",`
                          "FS-FileServer",`
                          "Storage-Services",`
                          "RemoteAccess",`
                          "DirectAccess-VPN",`
                          "Routing",`
                          "Web-Server",`
                          "Web-WebServer",`
                          "Web-Common-Http",`
                          "Web-Default-Doc",`
                          "Web-Dir-Browsing",`
                          "Web-Http-Errors",`
                          "Web-Static-Content",`
                          "Web-Http-Redirect",`
                          "Web-Health",`
                          "Web-Http-Logging",`
                          "Web-Custom-Logging",`
                          "Web-Log-Libraries",`
                          "Web-Request-Monitor",`
                          "Web-Http-Tracing",`
                          "Web-Performance",`
                          "Web-Stat-Compression",`
                          "Web-Dyn-Compression",`
                          "Web-Security",`
                          "Web-Filtering",`
                          "Web-Basic-Auth",`
                          "Web-Client-Auth",`
                          "Web-Digest-Auth",`
                          "Web-Cert-Auth",`
                          "Web-IP-Security",`
                          "Web-Url-Auth",`
                          "Web-Windows-Auth",`
                          "Web-App-Dev",`
                          "Web-Net-Ext45",`
                          "Web-Asp-Net45",`
                          "Web-CGI",`
                          "Web-ISAPI-Ext",`
                          "Web-ISAPI-Filter",`
                          "Web-Ftp-Server",`
                          "Web-WHC",`
                          "Web-Mgmt-Tools",`
                          "Web-Mgmt-Console",`
                          "Web-Mgmt-Compat",`
                          "Web-Scripting-Tools",`
                          "Web-Mgmt-Service",`
                          "NET-Framework-45-Features",`
                          "NET-Framework-45-Core",`
                          "NET-Framework-45-ASPNET",`
                          "NET-WCF-Services45",`
                          "NET-WCF-HTTP-Activation45",`
                          "NET-WCF-MSMQ-Activation45",`
                          "NET-WCF-Pipe-Activation45",`
                          "NET-WCF-TCP-Activation45",`
                          "NET-WCF-TCP-PortSharing45",`
                          "GPMC",`
                          "MSMQ",`
                          "MSMQ-Services",`
                          "MSMQ-Server",`
                          "CMAK",`
                          "RDC",`
                          "RSAT",`
                          "RSAT-Role-Tools",`
                          "RSAT-RemoteAccess",`
                          "RSAT-RemoteAccess-Mgmt",`
                          "RSAT-RemoteAccess-PowerShell",`
                          "User-Interfaces-Infra",`
                          "Server-Gui-Mgmt-Infra",`
                          "Server-Gui-Shell",`
                          "Windows-Internal-Database",`
                          "PowerShellRoot",`
                          "PowerShell",`
                          "PowerShell-ISE",`
                          "WAS",`
                          "WAS-Process-Model",`
                          "WAS-Config-APIs",`
                          "WinRM-IIS-Ext",`
                          "WoW64-Support")){
            
        WindowsFeature "$Feature$Number"{  
                        Ensure = “Present”  
                        Name = $Feature  
        } 
    }    
  }
}

