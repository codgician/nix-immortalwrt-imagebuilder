# snapshot package feeds for powerpc_464fp
{
  sha256sums = {
    hash = "sha256-SZrWv9LRUqldXaD/PxUMHFDERwXso8E84Dk4eIQRlzk=";
    name = "powerpc_464fp-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_464fp/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_464fp/base/";
    sourceInfo = {
      hash = "sha256-j4Tuaedszb88sP3Ndeu+h/fOK/dJd08RTwQvKz1ro+Q=";
      name = "powerpc_464fp-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_464fp/base/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_464fp/luci/";
    sourceInfo = {
      hash = "sha256-RxATH3yRVp1fo5lz+/VXKo7ARyrpwjJuvArjBhgo3RU=";
      name = "powerpc_464fp-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_464fp/luci/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_464fp/packages/";
    sourceInfo = {
      hash = "sha256-VEg7PCIqH/7FZaADUvqeOOEBini5lKiRf4GNEbVtsCY=";
      name = "powerpc_464fp-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_464fp/packages/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_464fp/routing/";
    sourceInfo = {
      hash = "sha256-TNLXYQg/QkcxdCjsr+FIH0VBTo8xewDSr1kbgQ0xiBU=";
      name = "powerpc_464fp-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_464fp/routing/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_464fp/telephony/";
    sourceInfo = {
      hash = "sha256-EmV3uZEUcqcc3xtsi+LvUz/VoPOZlGkAYQvPuwuPwJY=";
      name = "powerpc_464fp-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_464fp/telephony/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
