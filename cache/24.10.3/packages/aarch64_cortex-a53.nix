# 24.10.3 package feeds for aarch64_cortex-a53
{
  sha256sums = {
    hash = "sha256-EZcg5QtINP/W8z+bXylMA28eGfDpVxxZUklKq6ueCq8=";
    name = "aarch64_cortex-a53-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/aarch64_cortex-a53/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/aarch64_cortex-a53/base/";
    sourceInfo = {
      hash = "sha256-d+Vvyk3Djuw5lUgCyl2/RnmymTnLhs1TSyORyYzWfA8=";
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
      hash = "sha256-YhrCMS4FcmdVAKwg5LEUqaD/QPsmbvNNk8FeEcP6FUA=";
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
      hash = "sha256-4iYLWbtWLOxuz3kOdFhiQGJucpAUnQ2jfZQSuY1TmZU=";
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
      hash = "sha256-uyDTMF7cuBmin0qB+ygtpkrBknPeEH/5fNdmTyMAt90=";
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
      hash = "sha256-sPnlWBVyS0N6T7hAuOMNo6JrBdU7ToNjQG4aWT49xUc=";
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
