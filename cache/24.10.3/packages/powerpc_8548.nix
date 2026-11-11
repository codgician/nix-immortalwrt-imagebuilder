# 24.10.3 package feeds for powerpc_8548
{
  sha256sums = {
    hash = "sha256-kpmXAXFXH9gbsXzjlDlQD07fwwqJcjltIWMXLBHKzZA=";
    name = "powerpc_8548-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc_8548/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc_8548/base/";
    sourceInfo = {
      hash = "sha256-WqrBWMa56+OxlnsgfzYsHhEO1DOALkmMrWQXvv0Q8u8=";
      name = "powerpc_8548-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc_8548/base/Packages";
    };
    packages =
      let
        p = ./powerpc_8548/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc_8548/luci/";
    sourceInfo = {
      hash = "sha256-Kic5elibNdF8DWho/PIeEaxnZsVymUj8+Imt1WkZgp4=";
      name = "powerpc_8548-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc_8548/luci/Packages";
    };
    packages =
      let
        p = ./powerpc_8548/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc_8548/packages/";
    sourceInfo = {
      hash = "sha256-BiXj0D3CJXcB1AM2zZI9RFtaQtcxuRUmJN2zxgSpUcI=";
      name = "powerpc_8548-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc_8548/packages/Packages";
    };
    packages =
      let
        p = ./powerpc_8548/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc_8548/routing/";
    sourceInfo = {
      hash = "sha256-zLrdBzKF+hd87gqg+/LRpXhOmZ7PZRUior9u1IuNAqA=";
      name = "powerpc_8548-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc_8548/routing/Packages";
    };
    packages =
      let
        p = ./powerpc_8548/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc_8548/telephony/";
    sourceInfo = {
      hash = "sha256-8iCh3Mhgf3NUHPDsm71p7gxY8kB7AsA3zL/FsI6d1Og=";
      name = "powerpc_8548-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc_8548/telephony/Packages";
    };
    packages =
      let
        p = ./powerpc_8548/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
