# 24.10.0 bcm27xx/bcm2709
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm27xx/bcm2709/";
  sha256sums = {
    hash = "sha256-f81ukxZHCK3swsMlXULYrsCUwiquP6HWBf+ztvxdN7Y=";
    name = "bcm27xx_bcm2709-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm27xx/bcm2709/sha256sums";
  };
  imagebuilder = {
    sha256 = "1584fb1f6592b2f39d9a8d4a0955e23a65455abb8b354fa79beabc42a5731efb";
    filename = "immortalwrt-imagebuilder-24.10.0-bcm27xx-bcm2709.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-ZHhz1RCJFNpYW3sVypRZg/2PPNjI5hP6CT/ix3GOY+w=";
    name = "bcm27xx_bcm2709-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm27xx/bcm2709/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "6dba4a647e68fe50131b4ddb6cb85bad";
      version = "6.6.73";
    };
    default_packages = [
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
      "kmod-nf-nathelper-extra"
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
      "luci-app-cpufreq"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
    ];
    kmods_target = "6.6.73-1-6dba4a647e68fe50131b4ddb6cb85bad";
    profiles = {
      rpi-2 = {
        device_packages = [
          "cypress-firmware-43430-sdio"
          "brcmfmac-nvram-43430-sdio"
          "cypress-firmware-43455-sdio"
          "brcmfmac-nvram-43455-sdio"
          "kmod-brcmfmac"
          "wpad-basic-openssl"
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.73-1-6dba4a647e68fe50131b4ddb6cb85bad" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm27xx/bcm2709/kmods/6.6.73-1-6dba4a647e68fe50131b4ddb6cb85bad/";
    sourceInfo = {
      hash = "sha256-5EOIilMiYf/p5QgW5fgB5UIPtqZZdDYTiOkvoVO2ERk=";
      name = "kmods-bcm27xx_bcm2709-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm27xx/bcm2709/kmods/6.6.73-1-6dba4a647e68fe50131b4ddb6cb85bad/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm27xx/bcm2709/packages/";
    sourceInfo = {
      hash = "sha256-GFAWEHRqsCx7LGkZ0AvJnxAn+G7WRfq2aji1/bxUW3o=";
      name = "bcm27xx_bcm2709-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm27xx/bcm2709/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a7_neon-vfpv4";
  feeds = import ./../../../packages/arm_cortex-a7_neon-vfpv4.nix;
}
