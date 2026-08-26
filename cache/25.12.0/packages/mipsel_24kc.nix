# 25.12.0 package feeds for mipsel_24kc
{
  sha256sums = {
    hash = "sha256-Tff9fVAc8hsih1J8DEAF+QE/zqBEG3OZ0C08wByzXmQ=";
    name = "mipsel_24kc-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc/base/";
    sourceInfo = {
      hash = "sha256-dB9o73udLVepb/H58CI76kDOOjatNmBAwHQc5uz+9aw=";
      name = "mipsel_24kc-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc/base/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc/luci/";
    sourceInfo = {
      hash = "sha256-Ssb2lg/DyZ6E4ZhH8R+yT/77+GoskuCPlJkPOu8LDfk=";
      name = "mipsel_24kc-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc/luci/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc/packages/";
    sourceInfo = {
      hash = "sha256-xYhX3d2msz79zFCNTTXkuUSQQO85VVtKZoFDn+O2hcU=";
      name = "mipsel_24kc-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc/packages/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc/routing/";
    sourceInfo = {
      hash = "sha256-EWt9bQV4qCcoWzZEnAmCV79Jlw3s+rbx4JP1XqlMepA=";
      name = "mipsel_24kc-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc/routing/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc/telephony/";
    sourceInfo = {
      hash = "sha256-ona9xSfKv6DeGD2+UC6ZjicbmB4EPQaCekfjDmxKPZc=";
      name = "mipsel_24kc-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc/telephony/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
