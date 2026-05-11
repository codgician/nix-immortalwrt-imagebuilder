# 24.10.0 package feeds for mipsel_24kc_24kf
{
  sha256sums = {
    hash = "sha256-gh61FUqaQcT1aZ/OtRbGm9/WEXp7EHdbp5GoXf2lAH8=";
    name = "mipsel_24kc_24kf-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mipsel_24kc_24kf/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mipsel_24kc_24kf/base/";
    sourceInfo = {
      hash = "sha256-O8gArXymTQGqyrq1a2ZpXM9XmAbZXTS0Xm9uOBbl25I=";
      name = "mipsel_24kc_24kf-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mipsel_24kc_24kf/base/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mipsel_24kc_24kf/luci/";
    sourceInfo = {
      hash = "sha256-Y25bSRVZ/l7lErgH6uDiHkL3m6XxxfEsflpulK6Zwvg=";
      name = "mipsel_24kc_24kf-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mipsel_24kc_24kf/luci/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mipsel_24kc_24kf/packages/";
    sourceInfo = {
      hash = "sha256-60yhn96gHhSlqpqVT1Dk6z+Euq9l4iRmhSTcigjlxZc=";
      name = "mipsel_24kc_24kf-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mipsel_24kc_24kf/packages/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mipsel_24kc_24kf/routing/";
    sourceInfo = {
      hash = "sha256-IHR0nE5CYRo3L2lzMxSKG+UZBE87LN6P5hgvkqSxj+Q=";
      name = "mipsel_24kc_24kf-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mipsel_24kc_24kf/routing/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mipsel_24kc_24kf/telephony/";
    sourceInfo = {
      hash = "sha256-1Y3tt8kTZULFEaa7t6cRHjcRCDH6MwB8410lE3dAseE=";
      name = "mipsel_24kc_24kf-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mipsel_24kc_24kf/telephony/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
