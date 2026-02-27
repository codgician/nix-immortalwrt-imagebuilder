# 24.10.5 package feeds for aarch64_generic
{
  sha256sums = {
    hash = "sha256-b0/ds9cnx2yMw6Ru6AqCb4S+6whTLYGF7uAMcR98I1I=";
    name = "aarch64_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_generic/base/";
    sourceInfo = {
      hash = "sha256-/gmlysTRgKvi2Rb/vdDSE3mvebXZrfLyIgWyI/K+Oxk=";
      name = "aarch64_generic-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_generic/base/Packages";
    };
    packages =
      let
        p = ./aarch64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_generic/luci/";
    sourceInfo = {
      hash = "sha256-JoJBwhyusHh6B8ivlvvDIQf/ziDuy1o3hEbOB1j9uro=";
      name = "aarch64_generic-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_generic/luci/Packages";
    };
    packages =
      let
        p = ./aarch64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_generic/packages/";
    sourceInfo = {
      hash = "sha256-nGcYqDiuNso8O4oNkvrMKKx37sgYg7y9rTTNoEbyycA=";
      name = "aarch64_generic-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_generic/packages/Packages";
    };
    packages =
      let
        p = ./aarch64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_generic/routing/";
    sourceInfo = {
      hash = "sha256-10Pmmj5FwiiHASwOxRap8SSaXyzl6UTsaHTo6kDojk8=";
      name = "aarch64_generic-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_generic/routing/Packages";
    };
    packages =
      let
        p = ./aarch64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-j5Tqwt2S3pgrWUW8y0H8irDeLz6sdvXZaiZfQ8Bl9tI=";
      name = "aarch64_generic-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_generic/telephony/Packages";
    };
    packages =
      let
        p = ./aarch64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
