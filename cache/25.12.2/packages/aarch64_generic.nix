# 25.12.2 package feeds for aarch64_generic
{
  sha256sums = {
    hash = "sha256-zl7AdeavE62ocWgw6L6Fk4RJ2dBrNI8TbfXJZDG3CUY=";
    name = "aarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/aarch64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/aarch64_generic/base/";
    sourceInfo = {
      hash = "sha256-2YCKAykjcfmujfXfI3E5nw5dN+DxU5CVPT37GwBfMFg=";
      name = "aarch64_generic-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/aarch64_generic/base/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/aarch64_generic/luci/";
    sourceInfo = {
      hash = "sha256-/t+kcOInCL/qfnFgGEpCs+WbVk4YZ0zfUSY4HjUfccE=";
      name = "aarch64_generic-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/aarch64_generic/luci/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/aarch64_generic/packages/";
    sourceInfo = {
      hash = "sha256-N5rgi+EClY09+IGlrMNNnOt4C63PlRl5xtEOpvanp6s=";
      name = "aarch64_generic-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/aarch64_generic/packages/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/aarch64_generic/routing/";
    sourceInfo = {
      hash = "sha256-GeM283vbslXZohHUFbIZAutoc6SwYxPZf7lfhEG6f2c=";
      name = "aarch64_generic-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/aarch64_generic/routing/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/aarch64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-wh/n+L5uQWRZeuYQ+wLB5ZC+DMovJMFFUX+Px9ITXgM=";
      name = "aarch64_generic-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/aarch64_generic/telephony/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
