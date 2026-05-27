# snapshot package feeds for powerpc_8548
{
  sha256sums = {
    hash = "sha256-DSK6Xc8ykBhhjsHjXkBocEWiDKNOx1quaTfFJB8iT/k=";
    name = "powerpc_8548-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/base/";
    sourceInfo = {
      hash = "sha256-IKZfN5Bndp3ULGpnXW/XHanmWtMc4j+dU3jAn8oWnAY=";
      name = "powerpc_8548-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/base/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/luci/";
    sourceInfo = {
      hash = "sha256-NHiR2Vnk+pblUIgHXjTetAE4CY2WMDmf14UGCuOkV54=";
      name = "powerpc_8548-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/luci/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/packages/";
    sourceInfo = {
      hash = "sha256-AKvEoQpb3LvlCQ0KhaLeZ5Ir8GFj1U5ibCEGTl3zmeg=";
      name = "powerpc_8548-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/packages/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/routing/";
    sourceInfo = {
      hash = "sha256-Fv2ksZ8NiNvZURZJyMU0SApv9k6y875jShVvlgZ/dPA=";
      name = "powerpc_8548-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/routing/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/telephony/";
    sourceInfo = {
      hash = "sha256-3BQBGJsS5T7VGVDNqEU+no9raqzmffEipTY70Wk8P4g=";
      name = "powerpc_8548-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/telephony/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
