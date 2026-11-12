# 24.10.0 package feeds for armeb_xscale
{
  sha256sums = {
    hash = "sha256-NI+vKV4c+V83RozYLIok1qh73KHkmbgmeIv8yE/uHKM=";
    name = "armeb_xscale-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/armeb_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/armeb_xscale/base/";
    sourceInfo = {
      hash = "sha256-tkcoJf+wPnaoxOMVsaWq1xytsjWZp+IF20tzJ3Ps9PY=";
      name = "armeb_xscale-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/armeb_xscale/base/Packages";
    };
    packages =
      let
        p = ./armeb_xscale/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/armeb_xscale/luci/";
    sourceInfo = {
      hash = "sha256-NkZqdeDtR42OdjaQadQ4/AFPk284c6mfNg51TNt9cZk=";
      name = "armeb_xscale-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/armeb_xscale/luci/Packages";
    };
    packages =
      let
        p = ./armeb_xscale/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/armeb_xscale/packages/";
    sourceInfo = {
      hash = "sha256-7Lvtuv4tlioWAqvIii7HSOMvG4ekEQ6D/xatfGr+2sY=";
      name = "armeb_xscale-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/armeb_xscale/packages/Packages";
    };
    packages =
      let
        p = ./armeb_xscale/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/armeb_xscale/routing/";
    sourceInfo = {
      hash = "sha256-rI9Cnq5sSc13EbE0Ll1r0gOyTNMi00VWlTp7/YZ3HJg=";
      name = "armeb_xscale-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/armeb_xscale/routing/Packages";
    };
    packages =
      let
        p = ./armeb_xscale/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/armeb_xscale/telephony/";
    sourceInfo = {
      hash = "sha256-Xw/VgIUYXiEip9itXnKBf3QYOxU7L8wItwzwkruIbxQ=";
      name = "armeb_xscale-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/armeb_xscale/telephony/Packages";
    };
    packages =
      let
        p = ./armeb_xscale/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
