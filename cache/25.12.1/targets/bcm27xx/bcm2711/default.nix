# 25.12.1 bcm27xx/bcm2711
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm27xx/bcm2711/";
  sha256sums = {
    hash = "sha256-r9z6zytOpKIod0rB9e0WIAcb6ptYDrkEVOzNjjxB2Ds=";
    name = "bcm27xx_bcm2711-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm27xx/bcm2711/sha256sums";
  };
  imagebuilder = {
    sha256 = "ef6498e183a116c274a3177c500c84759eddbc67eeae786320515198a77c3e1a";
    filename = "immortalwrt-imagebuilder-25.12.1-bcm27xx-bcm2711.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-KBYdqaKkKtrFHIVbK0Z9rI+wwZwZInSjI60h2KNjj3g=";
    name = "bcm27xx_bcm2711-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm27xx/bcm2711/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a72";
    linux_kernel = {
      release = "1";
      vermagic = "8df305fef179c09d6e1e1dc384023cbb";
      version = "6.12.94";
    };
    default_packages = [
      "apk-openssl"
      "autocore"
      "automount"
      "base-files"
      "bcm27xx-gpu-fw"
      "bcm27xx-utils"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-fs-vfat"
      "kmod-nf-nathelper"
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
      "luci"
      "luci-app-cpufreq"
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
    kmods_target = "6.12.94-1-8df305fef179c09d6e1e1dc384023cbb";
    profiles = {
      rpi-4 = {
        device_packages = [
          "cypress-firmware-43455-sdio"
          "brcmfmac-nvram-43455-sdio"
          "kmod-brcmfmac"
          "wpad-openssl"
          "kmod-i2c-bcm2835"
          "kmod-spi-bcm2835"
          "kmod-spi-bcm2835-aux"
          "kmod-i2c-brcmstb"
          "kmod-usb-net-lan78xx"
          "kmod-usb-net-rtl8152"
          "kmod-r8169"
        ];
      };
    };
  };
  kmods."6.12.94-1-8df305fef179c09d6e1e1dc384023cbb" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm27xx/bcm2711/kmods/6.12.94-1-8df305fef179c09d6e1e1dc384023cbb/";
    sourceInfo = {
      hash = "sha256-y+FBCriNsJ8asSt7Kdc1vm6HfFS7z8Z6j81xCGL5OsU=";
      name = "kmods-bcm27xx_bcm2711-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm27xx/bcm2711/kmods/6.12.94-1-8df305fef179c09d6e1e1dc384023cbb/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm27xx/bcm2711/packages/";
    sourceInfo = {
      hash = "sha256-I0VBAwXbcDOhzm0e85dPgEpWP37dPYwvKfE1v0G3KAQ=";
      name = "bcm27xx_bcm2711-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm27xx/bcm2711/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_cortex-a72";
  feeds = import ./../../../packages/aarch64_cortex-a72.nix;
}
