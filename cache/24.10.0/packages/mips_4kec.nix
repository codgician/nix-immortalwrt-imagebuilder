# 24.10.0 package feeds for mips_4kec
{
  sha256sums = {
    hash = "sha256-kqzlU6RJuP46AGnH2B7Nw/KvT0F++rnxHo7SaeFZSuU=";
    name = "mips_4kec-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mips_4kec/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mips_4kec/base/";
    sourceInfo = {
      hash = "sha256-AIRpiszEnf0ESHxfnsl0aj3iokeBCzT82dhwi4Eis6s=";
      name = "mips_4kec-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mips_4kec/base/Packages";
    };
    packages =
      let
        p = ./mips_4kec/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mips_4kec/luci/";
    sourceInfo = {
      hash = "sha256-8rQZvCzfOf2IeKJw8iyLCRFtWuAudGrW/41yCw/X1iM=";
      name = "mips_4kec-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mips_4kec/luci/Packages";
    };
    packages =
      let
        p = ./mips_4kec/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mips_4kec/packages/";
    sourceInfo = {
      hash = "sha256-7hXLW9jxZRXK7LdPZQiG3ygW1+hT34M8AqD5pwwXM7s=";
      name = "mips_4kec-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mips_4kec/packages/Packages";
    };
    packages =
      let
        p = ./mips_4kec/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mips_4kec/routing/";
    sourceInfo = {
      hash = "sha256-lJhxenTCfMa52ELQRqMR/tzLiCZVr5Gj/0shqyqyH90=";
      name = "mips_4kec-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mips_4kec/routing/Packages";
    };
    packages =
      let
        p = ./mips_4kec/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mips_4kec/telephony/";
    sourceInfo = {
      hash = "sha256-NwdjtelFOvNHedMNcPa1RkrhPLLxWevB7poC44Y1NVE=";
      name = "mips_4kec-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mips_4kec/telephony/Packages";
    };
    packages =
      let
        p = ./mips_4kec/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
