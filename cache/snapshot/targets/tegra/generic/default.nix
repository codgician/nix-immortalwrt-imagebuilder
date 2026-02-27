# snapshot tegra/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/tegra/generic/";
  sha256sums = {
    hash = "sha256-uJ85aGxW+68XI7xG61/XH+yorYR/rCKTTx1dsz8skJQ=";
    name = "tegra_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/tegra/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "d49943a2753cc8346a0bbdb651c2d94c551b6441b9949fbae1cda02239f422b0";
    filename = "immortalwrt-imagebuilder-tegra-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-bd610qbyaP80NGQ1RuI9prOOF19y0G756yPJCXUQMH4=";
    name = "tegra_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/tegra/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_vfpv3-d16";
    linux_kernel = {
      release = "1";
      vermagic = "3ad9b75bd7e9263fbea6bb825714e6b1";
      version = "6.12.67";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.67-1-3ad9b75bd7e9263fbea6bb825714e6b1";
    profiles = {
      compulab_trimslice = {
        device_packages = [
          "kmod-leds-gpio"
          "kmod-r8169"
          "kmod-rt2800-usb"
          "kmod-rtc-em3027"
          "kmod-usb-hid"
          "kmod-usb-storage"
          "wpad-openssl"
        ];
      };
    };
  };
  kmods."6.12.67-1-3ad9b75bd7e9263fbea6bb825714e6b1" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/tegra/generic/kmods/6.12.67-1-3ad9b75bd7e9263fbea6bb825714e6b1/";
    sourceInfo = {
      hash = "sha256-W+JnS2Vr0AtDuQ+lQ9z5bL7J89myYeVrJt1i1iC9wfc=";
      name = "kmods-tegra_generic-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/tegra/generic/kmods/6.12.67-1-3ad9b75bd7e9263fbea6bb825714e6b1/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/tegra/generic/packages/";
    sourceInfo = {
      hash = "sha256-PnDm5Oc2/Jt9fdugKu9bz9/192JpvroJsn9pZrke17Q=";
      name = "tegra_generic-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/tegra/generic/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a9_vfpv3-d16";
  feeds = import ./../../../packages/arm_cortex-a9_vfpv3-d16.nix;
}
