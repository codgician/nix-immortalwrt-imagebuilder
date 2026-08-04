# 24.10.4 package feeds for aarch64_generic
{
  sha256sums = {
    hash = "sha256-hRIUVL7ZCt1XC8+Rw+dd5ghgSqb//3Fa9XMno4v6kWc=";
    name = "aarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/aarch64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/aarch64_generic/base/";
    sourceInfo = {
      hash = "sha256-Skw51SAJ0BmA9XQllGpmoV05t07H9AU/EZfMJfl3mG4=";
      name = "aarch64_generic-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/aarch64_generic/base/Packages";
    };
    packages =
      let
        p = ./aarch64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/aarch64_generic/luci/";
    sourceInfo = {
      hash = "sha256-ayhZAofHybtVZP4zy6NxvAt4H4fLbe9xvnIDnGSv25M=";
      name = "aarch64_generic-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/aarch64_generic/luci/Packages";
    };
    packages =
      let
        p = ./aarch64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/aarch64_generic/packages/";
    sourceInfo = {
      hash = "sha256-+m34iOQRHWN6izuhQGiS18FF3tDqF4Dp5dBLP2PmdeY=";
      name = "aarch64_generic-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/aarch64_generic/packages/Packages";
    };
    packages =
      let
        p = ./aarch64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/aarch64_generic/routing/";
    sourceInfo = {
      hash = "sha256-j8uppAPR/z1f9PixOBUPUueXSFQoMLSACZQc8bTgLk4=";
      name = "aarch64_generic-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/aarch64_generic/routing/Packages";
    };
    packages =
      let
        p = ./aarch64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/aarch64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-tHnpFLhqvpbio7Fi3mwCgKYMX0Ydf+5Yu7CuNcGFTAQ=";
      name = "aarch64_generic-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/aarch64_generic/telephony/Packages";
    };
    packages =
      let
        p = ./aarch64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
