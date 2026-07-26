# snapshot package feeds for mips64_mips64r2
{
  sha256sums = {
    hash = "sha256-oX21JM+XH6xQ7zK9zdaVPVQGoAVZVqg0SGcx4P8qUoI=";
    name = "mips64_mips64r2-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/mips64_mips64r2/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips64_mips64r2/base/";
    sourceInfo = {
      hash = "sha256-TJrILBVaA63ujDZBMbWJVKWohMl6jwua+jd3h2atgWs=";
      name = "mips64_mips64r2-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips64_mips64r2/base/packages.adb";
    };
    packages =
      let
        p = ./mips64_mips64r2/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips64_mips64r2/luci/";
    sourceInfo = {
      hash = "sha256-kDRa/51eXUvfUNi0Bl2PlljzVLjEC5k0CU4nAFRQ7/E=";
      name = "mips64_mips64r2-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips64_mips64r2/luci/packages.adb";
    };
    packages =
      let
        p = ./mips64_mips64r2/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips64_mips64r2/packages/";
    sourceInfo = {
      hash = "sha256-rirkb1Xxzk5aMXHiBy2p0aneXhqzRztYkDAczLfwyEY=";
      name = "mips64_mips64r2-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips64_mips64r2/packages/packages.adb";
    };
    packages =
      let
        p = ./mips64_mips64r2/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips64_mips64r2/routing/";
    sourceInfo = {
      hash = "sha256-lMGwhU0BhfYwetvx3zzzUIHGNHFzwtF2MK2sRoPUgaE=";
      name = "mips64_mips64r2-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips64_mips64r2/routing/packages.adb";
    };
    packages =
      let
        p = ./mips64_mips64r2/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips64_mips64r2/telephony/";
    sourceInfo = {
      hash = "sha256-VEtkttIrCj6xYEzESerVodaxKwj02fri7fWpj04clvo=";
      name = "mips64_mips64r2-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips64_mips64r2/telephony/packages.adb";
    };
    packages =
      let
        p = ./mips64_mips64r2/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
