# 24.10.1 bcm27xx/bcm2712
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm27xx/bcm2712/";
  sha256sums = {
    hash = "sha256-Z7TRiS9acKF+aVYhXjGkMOW7iaqrBcZMT0EZibsQ6Hk=";
    name = "bcm27xx_bcm2712-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm27xx/bcm2712/sha256sums";
  };
  imagebuilder = {
    sha256 = "41f0584018778cc8ebb47b04647402d025f3a515cfa191d6f77f7e2558021f6e";
    filename = "immortalwrt-imagebuilder-24.10.1-bcm27xx-bcm2712.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-bB3WtK50B17Kz2HZWHhmg8Hw7YwIvHz2MkO7AOZ1zFw=";
    name = "bcm27xx_bcm2712-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm27xx/bcm2712/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a76";
    linux_kernel = {
      release = "1";
      vermagic = "2504652262b04d41c0a23cca7bdc3c4d";
      version = "6.6.86";
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
    kmods_target = "6.6.86-1-2504652262b04d41c0a23cca7bdc3c4d";
    profiles = {
      rpi-5 = {
        device_packages = [
          "cypress-firmware-43455-sdio"
          "brcmfmac-nvram-43455-sdio"
          "kmod-brcmfmac"
          "wpad-openssl"
          "kmod-hwmon-pwmfan"
          "kmod-thermal"
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.86-1-2504652262b04d41c0a23cca7bdc3c4d" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm27xx/bcm2712/kmods/6.6.86-1-2504652262b04d41c0a23cca7bdc3c4d/";
    sourceInfo = {
      hash = "sha256-B4m7WJZBF34OLPeYfWMnIjpZ0wm+LE+kgrvAAUag5Yw=";
      name = "kmods-bcm27xx_bcm2712-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm27xx/bcm2712/kmods/6.6.86-1-2504652262b04d41c0a23cca7bdc3c4d/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm27xx/bcm2712/packages/";
    sourceInfo = {
      hash = "sha256-lFHZ24oGHCgXb4pCc4xubek8xYVN/pWfTDaGDo0gKnY=";
      name = "bcm27xx_bcm2712-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm27xx/bcm2712/packages/Packages";
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
