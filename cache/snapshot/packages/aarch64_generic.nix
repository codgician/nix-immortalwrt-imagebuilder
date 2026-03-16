# snapshot package feeds for aarch64_generic
{
  sha256sums = {
    hash = "sha256-AHK7h2PfxAi5glXy4gyfWeTugVqeGRlnJBklFbNPx7U=";
    name = "aarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/base/";
    sourceInfo = {
      hash = "sha256-DatrhS8TjWeZljIqpBG92IOTKfXMtr3lXqPKaXNXl7A=";
      name = "aarch64_generic-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/base/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/luci/";
    sourceInfo = {
      hash = "sha256-qW+nkjr3khIMp6PxeJbhBl5C4VMhUCPcQHroruy3qyQ=";
      name = "aarch64_generic-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/luci/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/packages/";
    sourceInfo = {
      hash = "sha256-Br+amPLtOxVPmWQZku02jlid1AvjjkOaPP+1z2V9mI8=";
      name = "aarch64_generic-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/packages/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/routing/";
    sourceInfo = {
      hash = "sha256-7fJKmGd2YVD5Bt4GetJCEmHwJw4gO/0jcoFDjCBUzAI=";
      name = "aarch64_generic-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/routing/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-eEWK3XtgKRMYNz9SPaJjEuY1Y0RXzVUUa7xW4DRl9wg=";
      name = "aarch64_generic-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/telephony/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
