# 25.12.0-rc2 package feeds for aarch64_cortex-a76
{
  sha256sums = {
    hash = "sha256-MRx5PYjt2+aLUjvtGxiCTZVkzHxA2u1Ga4Krypd3XKs=";
    name = "aarch64_cortex-a76-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a76/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a76/base/";
    sourceInfo = {
      hash = "sha256-D6O+xmtlc+wKnjNZKTgHcdaVaE/wolSvotXGiXEE+m8=";
      name = "aarch64_cortex-a76-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a76/base/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a76/luci/";
    sourceInfo = {
      hash = "sha256-XepTOzqeW1ez6obP4JP1GXT9aOjCqzg7IwgASWIW3TA=";
      name = "aarch64_cortex-a76-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a76/luci/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a76/packages/";
    sourceInfo = {
      hash = "sha256-H96CsNlVWhHUeb37dr1+LzglEtB1oE0t2D4sx24rAPw=";
      name = "aarch64_cortex-a76-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a76/packages/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a76/routing/";
    sourceInfo = {
      hash = "sha256-iy84LYv0Un6dSWzJg/gzhn0+D9Vs/MCzfqS9Az6Hc3o=";
      name = "aarch64_cortex-a76-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a76/routing/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a76/telephony/";
    sourceInfo = {
      hash = "sha256-/W3rf0uLTVkR4QrcjxvjRI477Scr191GoA+v2nQ5TBc=";
      name = "aarch64_cortex-a76-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a76/telephony/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
