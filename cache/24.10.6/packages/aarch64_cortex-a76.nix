# 24.10.6 package feeds for aarch64_cortex-a76
{
  sha256sums = {
    hash = "sha256-ieFHbzz6CWx3vUCOhEx0UxDZr6vFVvIBNfP86F3Yf88=";
    name = "aarch64_cortex-a76-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/aarch64_cortex-a76/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/aarch64_cortex-a76/base/";
    sourceInfo = {
      hash = "sha256-KGp6kHqrDo8cHYTUGiLLsl+uGk9wxJK8Qjv0ecXO03U=";
      name = "aarch64_cortex-a76-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/aarch64_cortex-a76/base/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/aarch64_cortex-a76/luci/";
    sourceInfo = {
      hash = "sha256-GssYNMffRRjOqZLySu/+hflVSJAsD+RXmT4It7Pjzr0=";
      name = "aarch64_cortex-a76-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/aarch64_cortex-a76/luci/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/aarch64_cortex-a76/packages/";
    sourceInfo = {
      hash = "sha256-3NhVXE9V4L45i7UD7ElQc3qrRZL3pw+Is+nVQ9m1lb0=";
      name = "aarch64_cortex-a76-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/aarch64_cortex-a76/packages/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/aarch64_cortex-a76/routing/";
    sourceInfo = {
      hash = "sha256-gpWp1hj42OVWgjzd1YfBnXglgos9Y5dDXgggW/IJcOY=";
      name = "aarch64_cortex-a76-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/aarch64_cortex-a76/routing/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/aarch64_cortex-a76/telephony/";
    sourceInfo = {
      hash = "sha256-ezLJf/qtt93sUI/wwog4XaA8Ytab9F6dr+yA+1RTxms=";
      name = "aarch64_cortex-a76-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/aarch64_cortex-a76/telephony/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
