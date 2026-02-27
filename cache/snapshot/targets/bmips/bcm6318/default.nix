# snapshot bmips/bcm6318
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm6318/";
  sha256sums = {
    hash = "sha256-ulRkn+vVfTZa2J54poxdt+kZXoSL5nmUzP2vEmJ+qTw=";
    name = "bmips_bcm6318-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm6318/sha256sums";
  };
  imagebuilder = {
    sha256 = "d107138cf8fe0279a88826612830309e4685f26118a09800431c0ad218543318";
    filename = "immortalwrt-imagebuilder-bmips-bcm6318.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Piv2AAIdW6qVf27cqkM/9xJz2NDetBD/lxf2RzW1bjs=";
    name = "bmips_bcm6318-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm6318/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "f3a681d03704cafea1ba06e5fdec97a5";
      version = "6.12.67";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.67-1-f3a681d03704cafea1ba06e5fdec97a5";
    profiles = {
      comtrend_ar-5315u = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43217-sprom"
          "kmod-leds-bcm6328"
        ];
      };
      tp-link_td-w8968-v3 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43217-sprom"
          "kmod-leds-bcm6328"
        ];
      };
    };
  };
  kmods."6.12.67-1-f3a681d03704cafea1ba06e5fdec97a5" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm6318/kmods/6.12.67-1-f3a681d03704cafea1ba06e5fdec97a5/";
    sourceInfo = {
      hash = "sha256-jcbaZXtJEBTh1/uyyROt6Dpu1vtlGn9ckhmQX5u4J4E=";
      name = "kmods-bmips_bcm6318-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm6318/kmods/6.12.67-1-f3a681d03704cafea1ba06e5fdec97a5/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm6318/packages/";
    sourceInfo = {
      hash = "sha256-DTbe4J37/2dnn35ISZ7nubwrpDJTMw3OGYgo/d5+Ehk=";
      name = "bmips_bcm6318-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm6318/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_mips32";
  feeds = import ./../../../packages/mips_mips32.nix;
}
