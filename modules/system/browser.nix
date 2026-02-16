{ pkgs, ... }:

{
  programs.chromium = {
    enable = true;
    
    # 1. Extensions (uBlock Origin Lite)
    # This installs it for ALL users on the system.
    extensions = [
      "ddkjiahejlhfcafbddmgiahcphecmpfh" 
    ];

    # 2. Managed Policies (Secure DNS & Force-Install)
    # This writes to /etc/chromium/policies/managed/ which Chromium ACTUALLY reads.
    extraOpts = {
      # Secure DNS (Cloudflare)
      "DnsOverHttpsMode" = "secure";
      "DnsOverHttpsTemplates" = "https://chrome.cloudflare-dns.com/dns-query";

      # Force uBlock Origin Lite (Prevents disabling/removing)
      "ExtensionInstallForcelist" = [
        "ddkjiahejlhfcafbddmgiahcphecmpfh;https://clients2.google.com/service/update2/crx"
      ];
      
      # Optional: Suppress the "Managed by your organization" warning on the toolbar
      "ManagedConfiguration" = true;
    };
  };
}
