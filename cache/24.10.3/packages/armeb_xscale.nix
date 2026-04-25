# 24.10.3 package feeds for armeb_xscale
{
  sha256sums = {
    hash = "sha256-7Uo5MFzOwAN61TIV3pA02NFnf8jzMLx7IcMh25emt6s=";
    name = "armeb_xscale-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/armeb_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/armeb_xscale/base/";
    sourceInfo = {
      hash = "sha256-iwXxYtxwocGR/NaNRtylBmbsQEdYFIApmMhg+9al+V4=";
      name = "armeb_xscale-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/armeb_xscale/base/Packages";
    };
    packages =
      let
        p = ./armeb_xscale/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/armeb_xscale/luci/";
    sourceInfo = {
      hash = "sha256-t5wZLPIEh7gEw5+kEsxk0jmqMRMDy8TMByiH4mxEHuk=";
      name = "armeb_xscale-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/armeb_xscale/luci/Packages";
    };
    packages =
      let
        p = ./armeb_xscale/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/armeb_xscale/packages/";
    sourceInfo = {
      hash = "sha256-AoHW0E4njv4iu7FEjIp2R/3VVtPNvO295fQo7Bmfrs4=";
      name = "armeb_xscale-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/armeb_xscale/packages/Packages";
    };
    packages =
      let
        p = ./armeb_xscale/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/armeb_xscale/routing/";
    sourceInfo = {
      hash = "sha256-10why///ftqr+/USQodkA//K8sNIIFIB8Uq3a28jtOA=";
      name = "armeb_xscale-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/armeb_xscale/routing/Packages";
    };
    packages =
      let
        p = ./armeb_xscale/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/armeb_xscale/telephony/";
    sourceInfo = {
      hash = "sha256-6N/u8z9AU8HZCZQPs298FQSVaVdc5DUAQSsD0HonKnE=";
      name = "armeb_xscale-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/armeb_xscale/telephony/Packages";
    };
    packages =
      let
        p = ./armeb_xscale/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
