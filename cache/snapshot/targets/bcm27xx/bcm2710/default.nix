# snapshot bcm27xx/bcm2710
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm27xx/bcm2710/";
  sha256sums = {
    hash = "sha256-nVg9MprJ5rrwmw+OCaihvClArOAz2BicqweRdsM+Oms=";
    name = "bcm27xx_bcm2710-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm27xx/bcm2710/sha256sums";
  };
  imagebuilder = {
    sha256 = "ee0ed99f2919daf76c6815421bd27cbe07fc26aa6edcbfe71904ec8d0bd5d565";
    filename = "immortalwrt-imagebuilder-bcm27xx-bcm2710.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-obBBKbsl1gsRfEXdBX7uhjg6OhL+W8HwHLaXxk5oNDQ=";
    name = "bcm27xx_bcm2710-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm27xx/bcm2710/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "6f4b04a65a8f3391b36a24407f3b2a3e";
      version = "6.12.67";
    };
    default_packages = [
      "apk-openssl"
      "automount"
      "base-files"
      "bcm27xx-gpu-fw"
      "bcm27xx-utils"
      "ca-bundle"
      "cpufreq"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-fs-vfat"
      "kmod-nft-offload"
      "kmod-nls-cp437"
      "kmod-nls-iso8859-1"
      "kmod-sound-arm-bcm2835"
      "kmod-sound-core"
      "kmod-usb-hid"
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
    ];
    kmods_target = "6.12.67-1-6f4b04a65a8f3391b36a24407f3b2a3e";
    profiles = {
      rpi-3 = {
        device_packages = [
          "cypress-firmware-43430-sdio"
          "brcmfmac-nvram-43430-sdio"
          "cypress-firmware-43455-sdio"
          "brcmfmac-nvram-43455-sdio"
          "kmod-brcmfmac"
          "wpad-openssl"
          "kmod-i2c-bcm2835"
          "kmod-spi-bcm2835"
          "kmod-spi-bcm2835-aux"
        ];
      };
    };
  };
  kmods."6.12.67-1-6f4b04a65a8f3391b36a24407f3b2a3e" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm27xx/bcm2710/kmods/6.12.67-1-6f4b04a65a8f3391b36a24407f3b2a3e/";
    sourceInfo = {
      hash = "sha256-tfJZUoF8QWJPXq91Qa+L8a6qYLIumFJJLjXVpcnRVDo=";
      name = "kmods-bcm27xx_bcm2710-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm27xx/bcm2710/kmods/6.12.67-1-6f4b04a65a8f3391b36a24407f3b2a3e/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm27xx/bcm2710/packages/";
    sourceInfo = {
      hash = "sha256-Yf0Tsdi37TquMhPFqHFtCXRTh+G0Q5vx+AdVayh/MDk=";
      name = "bcm27xx_bcm2710-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm27xx/bcm2710/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_cortex-a53";
  feeds = import ./../../../packages/aarch64_cortex-a53.nix;
}
