# snapshot bcm47xx/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm47xx/generic/";
  sha256sums = {
    hash = "sha256-kGwRSbk24n8/jfqWHQBBt0L2aYumsL4UMqeaVQmt1F8=";
    name = "bcm47xx_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm47xx/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "0eb45c63368d67c4ebd52d9ffe37fcab8dcec2557dcced5381c14ab8ce86fd53";
    filename = "immortalwrt-imagebuilder-bcm47xx-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-cCFWo9efVJYaMiZrCHKwQegbOGjzeP90xq2ICav+5sk=";
    name = "bcm47xx_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm47xx/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "22d4f0c0434ad234fe9dd5ffb11be6fc";
      version = "6.12.67";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mtd"
      "netifd"
      "nftables"
      "nvram"
      "odhcp6c"
      "odhcpd-ipv6only"
      "otrx"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "6.12.67-1-22d4f0c0434ad234fe9dd5ffb11be6fc";
    profiles = {
      linksys_e3000-v1 = {
        device_packages = [
          "kmod-bgmac"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      linksys_wrt610n-v1 = {
        device_packages = [
          "kmod-tg3"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      linksys_wrt610n-v2 = {
        device_packages = [
          "kmod-bgmac"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      standard = {
        device_packages = [
          "kmod-b44"
          "kmod-bgmac"
          "kmod-tg3"
        ];
      };
    };
  };
  kmods."6.12.67-1-22d4f0c0434ad234fe9dd5ffb11be6fc" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm47xx/generic/kmods/6.12.67-1-22d4f0c0434ad234fe9dd5ffb11be6fc/";
    sourceInfo = {
      hash = "sha256-wF1bc7X8FrvBVp5qRHGA2o/oSpGhdcuHaJyp+UfG5y4=";
      name = "kmods-bcm47xx_generic-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm47xx/generic/kmods/6.12.67-1-22d4f0c0434ad234fe9dd5ffb11be6fc/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm47xx/generic/packages/";
    sourceInfo = {
      hash = "sha256-ed0hIBF5WOnB7qM5ilhBu0zVOh1+byic0XOAzFiIeJo=";
      name = "bcm47xx_generic-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm47xx/generic/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mipsel_mips32";
  feeds = import ./../../../packages/mipsel_mips32.nix;
}
