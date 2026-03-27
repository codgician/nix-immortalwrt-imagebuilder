# 25.12.0-rc1 package feeds for aarch64_generic
{
  sha256sums = {
    hash = "sha256-7YmbST/KfrLlF9Ug5y0dxh6Nw3ceAsIU8TaW7+lR1dk=";
    name = "aarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_generic/base/";
    sourceInfo = {
      hash = "sha256-Y+ks+L2xCHwnSm7aAEH5fOAcaDEyg2xSrE7OTg3vfjY=";
      name = "aarch64_generic-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_generic/base/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_generic/luci/";
    sourceInfo = {
      hash = "sha256-wHBxmBjnAFp0fPA7Bzolr34nMeuszq0f3cOErRzAlbI=";
      name = "aarch64_generic-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_generic/luci/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_generic/packages/";
    sourceInfo = {
      hash = "sha256-yDAV1/SoniGvQ+N6vCUOsifuLG1nakEDynLmf4bG4co=";
      name = "aarch64_generic-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_generic/packages/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_generic/routing/";
    sourceInfo = {
      hash = "sha256-Qtr+mZyDeqVhD2TdqXI/JqT7zlADFZDZYjTetKxzeKQ=";
      name = "aarch64_generic-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_generic/routing/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-9yevW0R3A6s+P1bfCFtGilVFHzV2SJJ64Sy/MJjUAX4=";
      name = "aarch64_generic-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_generic/telephony/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
