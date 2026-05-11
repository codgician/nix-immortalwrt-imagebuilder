# 24.10.2 package feeds for armeb_xscale
{
  sha256sums = {
    hash = "sha256-aBDfR7Y8Li6DJrRJUHWX26gbSyzJtjFau4bKLsk1jlQ=";
    name = "armeb_xscale-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/armeb_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/armeb_xscale/base/";
    sourceInfo = {
      hash = "sha256-TXjUHpFgEAtl+ZJhokfJ1VQ2jfCgkOeSahGM4INS0uc=";
      name = "armeb_xscale-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/armeb_xscale/base/Packages";
    };
    packages =
      let
        p = ./armeb_xscale/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/armeb_xscale/luci/";
    sourceInfo = {
      hash = "sha256-p1iqhJ/9cyomXvmIQ0TWaFVDlViEZg947ROQnNG7nvE=";
      name = "armeb_xscale-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/armeb_xscale/luci/Packages";
    };
    packages =
      let
        p = ./armeb_xscale/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/armeb_xscale/packages/";
    sourceInfo = {
      hash = "sha256-GouthIoG69Z597Xyq9A6FEAPoSR8otCGWz6pgPdc2bI=";
      name = "armeb_xscale-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/armeb_xscale/packages/Packages";
    };
    packages =
      let
        p = ./armeb_xscale/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/armeb_xscale/routing/";
    sourceInfo = {
      hash = "sha256-2A6ttQ+/AOMlZz7Md3YSCCjCbQvVbC1UfQMFUfIFKpk=";
      name = "armeb_xscale-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/armeb_xscale/routing/Packages";
    };
    packages =
      let
        p = ./armeb_xscale/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/armeb_xscale/telephony/";
    sourceInfo = {
      hash = "sha256-hjtdIT+cLhjKeWCDb17qfcUx2yjEdUHAdd5uY159Xa4=";
      name = "armeb_xscale-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/armeb_xscale/telephony/Packages";
    };
    packages =
      let
        p = ./armeb_xscale/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
