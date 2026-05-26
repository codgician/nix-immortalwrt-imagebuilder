# 25.12.0 package feeds for mipsel_24kc_24kf
{
  sha256sums = {
    hash = "sha256-ofrlJIAPSIzeGh1L13EdpKsYY6xSN3uD7WiyVWDU/tM=";
    name = "mipsel_24kc_24kf-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc_24kf/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc_24kf/base/";
    sourceInfo = {
      hash = "sha256-r47PW4OjZM2rq5mqq7XWCAjewFFRqAYpq4RsmZnVvBU=";
      name = "mipsel_24kc_24kf-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc_24kf/base/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc_24kf/luci/";
    sourceInfo = {
      hash = "sha256-rt8Mb2VuCzA1jWPXb3mFF8yUiY1pDbZXRbmv0cZ8Rl0=";
      name = "mipsel_24kc_24kf-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc_24kf/luci/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc_24kf/packages/";
    sourceInfo = {
      hash = "sha256-i8j52o4i7Td1NdDA8ibhAKFvELRpUfpb0SbMOepBQDk=";
      name = "mipsel_24kc_24kf-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc_24kf/packages/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc_24kf/routing/";
    sourceInfo = {
      hash = "sha256-Si5DjzT/H8eVE6nG87X5tXDzEQ0cuMOvetl2bWguY5A=";
      name = "mipsel_24kc_24kf-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc_24kf/routing/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc_24kf/telephony/";
    sourceInfo = {
      hash = "sha256-reUOvagUe6SxVOmCj8g3ydDoyvfijP5/JS3LnvV/X9I=";
      name = "mipsel_24kc_24kf-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc_24kf/telephony/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
