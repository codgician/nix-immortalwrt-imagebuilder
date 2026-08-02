# 24.10.3 package feeds for aarch64_cortex-a53
{
  sha256sums = {
    hash = "sha256-1pZ9ihXMT5mMadJSAI3mlq0Wr161V2UViVM/Y5LumgY=";
    name = "aarch64_cortex-a53-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/aarch64_cortex-a53/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/aarch64_cortex-a53/base/";
    sourceInfo = {
      hash = "sha256-WKWcPGkGHwfBNXP8yPgZsauzdhGFp/3ucozCx2sWtsI=";
      name = "aarch64_cortex-a53-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/aarch64_cortex-a53/base/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/aarch64_cortex-a53/luci/";
    sourceInfo = {
      hash = "sha256-yCoIdKsqqZw/ayWmcPp5twh+z+14bLmxggSWCmfSwh8=";
      name = "aarch64_cortex-a53-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/aarch64_cortex-a53/luci/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/aarch64_cortex-a53/packages/";
    sourceInfo = {
      hash = "sha256-SI+mMOHzPDhu+rFuwdkXPBdsCmvUkoY8+IzooUjcSiw=";
      name = "aarch64_cortex-a53-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/aarch64_cortex-a53/packages/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/aarch64_cortex-a53/routing/";
    sourceInfo = {
      hash = "sha256-+4kUCNrGucUIoaIclR8VLyr9rM9entyPhvuxdRVTpn8=";
      name = "aarch64_cortex-a53-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/aarch64_cortex-a53/routing/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/aarch64_cortex-a53/telephony/";
    sourceInfo = {
      hash = "sha256-EdIYXOJxQHmnMGWNl9vJ4JkT1z/60Moul+V4Xe8Vgk0=";
      name = "aarch64_cortex-a53-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/aarch64_cortex-a53/telephony/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
