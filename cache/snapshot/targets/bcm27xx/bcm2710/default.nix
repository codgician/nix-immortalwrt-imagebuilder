# snapshot bcm27xx/bcm2710
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2710/";
  sha256sums = {
    hash = "sha256-SBjhUsXh6eEk61ogoMl+i6Y1ZsS+O3A4wtuhC/Hnl1s=";
    name = "bcm27xx_bcm2710-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2710/sha256sums";
  };
  imagebuilder = {
    sha256 = "dcf78f9bceeccc98e8e25d42367cc954f5edfaab1d590521c5475761023aa872";
    filename = "immortalwrt-imagebuilder-bcm27xx-bcm2710.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-AvAonLQQivlu/KxGdLvwlxMQBX2kPZcDOseyhmwWR30=";
    name = "bcm27xx_bcm2710-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2710/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "c735508cecd7d8587b57e3f406ef487b";
      version = "6.12.92";
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
    kmods_target = "6.12.92-1-c735508cecd7d8587b57e3f406ef487b";
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
  kmods."6.12.92-1-c735508cecd7d8587b57e3f406ef487b" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2710/kmods/6.12.92-1-c735508cecd7d8587b57e3f406ef487b/";
    sourceInfo = {
      hash = "sha256-WM6w2hFYoOZEB4NnoVkvuzFgTqDqG3/d/wKOXy7rXVA=";
      name = "kmods-bcm27xx_bcm2710-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2710/kmods/6.12.92-1-c735508cecd7d8587b57e3f406ef487b/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2710/packages/";
    sourceInfo = {
      hash = "sha256-MlNsF/OKQChffqwA8wuPS5LawLChw91B5i+yp+84BUk=";
      name = "bcm27xx_bcm2710-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2710/packages/packages.adb";
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
