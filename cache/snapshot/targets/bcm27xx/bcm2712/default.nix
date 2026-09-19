# snapshot bcm27xx/bcm2712
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2712/";
  sha256sums = {
    hash = "sha256-HMGuHYhRiTFD/VyGAuCYq/3+8TsZFhB60hcOKDaQo9U=";
    name = "bcm27xx_bcm2712-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2712/sha256sums";
  };
  imagebuilder = {
    sha256 = "9263b5f7643c330dea5b2c9fbbd029bd4b78f2a8d20465a260a99fb834fa1dee";
    filename = "immortalwrt-imagebuilder-bcm27xx-bcm2712.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-FNopsJVBOXImaNU4mTZCJiuxi9bOh8c/eCQBo0uneNo=";
    name = "bcm27xx_bcm2712-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2712/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a76";
    linux_kernel = {
      release = "1";
      vermagic = "27ee1a086b9ea3bb572ae03bc8427a36";
      version = "6.18.52";
    };
    default_packages = [
      "apk-openssl"
      "automount"
      "base-files"
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
    kmods_target = "6.18.52-1-27ee1a086b9ea3bb572ae03bc8427a36";
    profiles = {
      rpi-5 = {
        device_packages = [
          "cypress-firmware-43455-sdio"
          "brcmfmac-nvram-43455-sdio"
          "kmod-brcmfmac"
          "wpad-openssl"
          "kmod-usb-net-lan78xx"
          "kmod-usb-net-rtl8152"
          "kmod-r8169"
          "kmod-hwmon-pwmfan"
          "kmod-thermal"
        ];
      };
    };
  };
  kmods."6.18.52-1-27ee1a086b9ea3bb572ae03bc8427a36" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2712/kmods/6.18.52-1-27ee1a086b9ea3bb572ae03bc8427a36/";
    sourceInfo = {
      hash = "sha256-uO2HvxqpBfIbxOONXMhw8EMG2DcX5PSPFBKyjjWIiTE=";
      name = "kmods-bcm27xx_bcm2712-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2712/kmods/6.18.52-1-27ee1a086b9ea3bb572ae03bc8427a36/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2712/packages/";
    sourceInfo = {
      hash = "sha256-ln6fa8yrVbdhftleFvPhShmGzkCAR4oSU9otlK4QQRs=";
      name = "bcm27xx_bcm2712-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2712/packages/packages.adb";
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
