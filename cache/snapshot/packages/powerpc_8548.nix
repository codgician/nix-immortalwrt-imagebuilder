# snapshot package feeds for powerpc_8548
{
  sha256sums = {
    hash = "sha256-Tjv0ugLK2SW16UPLEY78EmPozt8zp6gi/KcdIFypJs4=";
    name = "powerpc_8548-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/powerpc_8548/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/powerpc_8548/base/";
    sourceInfo = {
      hash = "sha256-/i1nvLKkWd9Z/EUOVs4fpf61QXpnaKKQSdyEo9S5a+E=";
      name = "powerpc_8548-base-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/powerpc_8548/base/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/powerpc_8548/luci/";
    sourceInfo = {
      hash = "sha256-Mh7gW6Hqf+xNFSRVSRat2an1BSgsEfswE9crAS7Jg0o=";
      name = "powerpc_8548-luci-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/powerpc_8548/luci/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/powerpc_8548/packages/";
    sourceInfo = {
      hash = "sha256-sHOTMyhklAWX6LJ6J1DtuJRPX2Why18zToJ4l/V/QlM=";
      name = "powerpc_8548-packages-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/powerpc_8548/packages/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/powerpc_8548/routing/";
    sourceInfo = {
      hash = "sha256-hXlhoJSdZjx6uL8f5o57iB87rMOWL1sKd8nTvaNliRw=";
      name = "powerpc_8548-routing-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/powerpc_8548/routing/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/powerpc_8548/telephony/";
    sourceInfo = {
      hash = "sha256-iI9dYcZ0nuiRNVoKIOumtAmKziIj75Tb5Cq3uWd6LKc=";
      name = "powerpc_8548-telephony-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/powerpc_8548/telephony/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
