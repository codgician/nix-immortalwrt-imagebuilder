# 24.10.2 bcm27xx/bcm2712
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm27xx/bcm2712/";
  sha256sums = {
    hash = "sha256-jpdIFSL4GDZMLhWouj8LEx4+nuRL+n1shDVaSbRrdI8=";
    name = "bcm27xx_bcm2712-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm27xx/bcm2712/sha256sums";
  };
  imagebuilder = {
    sha256 = "0dd88a1356deaf06714a5eb0dde0e9dab2b25066e64b183b44108b2a5c3c58b4";
    filename = "immortalwrt-imagebuilder-24.10.2-bcm27xx-bcm2712.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-gEsNa04Ym2SATpE594JOuKvdtkVOj1T44dy7/vyO2gg=";
    name = "bcm27xx_bcm2712-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm27xx/bcm2712/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a76";
    linux_kernel = {
      release = "1";
      vermagic = "4ce7bff7e630a1420cf7fb5f89d44105";
      version = "6.6.93";
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
    kmods_target = "6.6.93-1-4ce7bff7e630a1420cf7fb5f89d44105";
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
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.93-1-4ce7bff7e630a1420cf7fb5f89d44105" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm27xx/bcm2712/kmods/6.6.93-1-4ce7bff7e630a1420cf7fb5f89d44105/";
    sourceInfo = {
      hash = "sha256-Cc5O2RGAJJ3fg6MBACk7FFw19ez6tiPummWsElQ9XbM=";
      name = "kmods-bcm27xx_bcm2712-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm27xx/bcm2712/kmods/6.6.93-1-4ce7bff7e630a1420cf7fb5f89d44105/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm27xx/bcm2712/packages/";
    sourceInfo = {
      hash = "sha256-UqAohrtvdZEGYAKLnH9wQi/tQu6xVjXqhBBxgFeZ/1s=";
      name = "bcm27xx_bcm2712-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm27xx/bcm2712/packages/Packages";
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
