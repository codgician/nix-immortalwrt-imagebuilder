# snapshot bcm27xx/bcm2712
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm27xx/bcm2712/";
  sha256sums = {
    hash = "sha256-C0cJK1xwSxahHBRPQe/PKBJCH9hLz7NHuo1yzR56HdA=";
    name = "bcm27xx_bcm2712-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm27xx/bcm2712/sha256sums";
  };
  imagebuilder = {
    sha256 = "4d14e340bc9fa5434238a261302e9fcfa72fa8e84923805a7a59823b2e04bdf1";
    filename = "immortalwrt-imagebuilder-bcm27xx-bcm2712.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-CFA2JI2pvAMNk9kTl7RF3StwYdHWyUvv6XEkAw+5dNU=";
    name = "bcm27xx_bcm2712-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm27xx/bcm2712/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a76";
    linux_kernel = {
      release = "1";
      vermagic = "04c3203bc8f8c4031883dc27a82d1a07";
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
    kmods_target = "6.12.67-1-04c3203bc8f8c4031883dc27a82d1a07";
    profiles = {
      rpi-5 = {
        device_packages = [
          "cypress-firmware-43455-sdio"
          "brcmfmac-nvram-43455-sdio"
          "kmod-brcmfmac"
          "wpad-openssl"
          "kmod-i2c-bcm2835"
          "kmod-spi-bcm2835"
          "kmod-i2c-brcmstb"
          "kmod-i2c-designware-platform"
          "kmod-spi-dw-mmio"
          "kmod-hwmon-pwmfan"
          "kmod-thermal"
          "kmod-usb-net-lan78xx"
          "kmod-usb-net-rtl8152"
          "kmod-r8169"
        ];
      };
    };
  };
  kmods."6.12.67-1-04c3203bc8f8c4031883dc27a82d1a07" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm27xx/bcm2712/kmods/6.12.67-1-04c3203bc8f8c4031883dc27a82d1a07/";
    sourceInfo = {
      hash = "sha256-YCdm1EfSw7BqMRJkahOVurWXVPTzKgTrZCVK5OB3cWU=";
      name = "kmods-bcm27xx_bcm2712-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm27xx/bcm2712/kmods/6.12.67-1-04c3203bc8f8c4031883dc27a82d1a07/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm27xx/bcm2712/packages/";
    sourceInfo = {
      hash = "sha256-M46i9qAL8wlNfLTjsCXVC+4J/XUv/6YwRbaA8eP1KbM=";
      name = "bcm27xx_bcm2712-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm27xx/bcm2712/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_cortex-a76";
  feeds = import ./../../../packages/aarch64_cortex-a76.nix;
}
