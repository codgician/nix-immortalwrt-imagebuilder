# 24.10.4 package feeds for loongarch64_generic
{
  sha256sums = {
    hash = "sha256-wfAKtrixLey6m5yn1JHTPnG6dKE89OPzvkJZR8ydF1I=";
    name = "loongarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/loongarch64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/loongarch64_generic/base/";
    sourceInfo = {
      hash = "sha256-9Az4ixuaJ7t0fZwvewkTDFUe0vsxpdT8s7LhlXkqGwU=";
      name = "loongarch64_generic-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/loongarch64_generic/base/Packages";
    };
    packages =
      let
        p = ./loongarch64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/loongarch64_generic/luci/";
    sourceInfo = {
      hash = "sha256-5dXbFAV/+TQ2mhzNSJjwjaDSa0KfIg6Yov88jzpaF5E=";
      name = "loongarch64_generic-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/loongarch64_generic/luci/Packages";
    };
    packages =
      let
        p = ./loongarch64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/loongarch64_generic/packages/";
    sourceInfo = {
      hash = "sha256-ajpWtmnGNvpZW0SlEO5zQyfOfZpuBIxw/qObhG3i2l8=";
      name = "loongarch64_generic-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/loongarch64_generic/packages/Packages";
    };
    packages =
      let
        p = ./loongarch64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/loongarch64_generic/routing/";
    sourceInfo = {
      hash = "sha256-I28d1dfl65wB82SkuDK742QDlpyjqAtO2EKa9xxVSm4=";
      name = "loongarch64_generic-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/loongarch64_generic/routing/Packages";
    };
    packages =
      let
        p = ./loongarch64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/loongarch64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-DCnK3d4LJ3qv1IxOhkQQ66nzT7KZGy+RvBrX53uDv4s=";
      name = "loongarch64_generic-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/loongarch64_generic/telephony/Packages";
    };
    packages =
      let
        p = ./loongarch64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
