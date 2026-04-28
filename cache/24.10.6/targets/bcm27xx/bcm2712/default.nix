# 24.10.6 bcm27xx/bcm2712
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm27xx/bcm2712/";
  sha256sums = {
    hash = "sha256-ciRtF62Uh/TnkuQ+gx23W13dgYzBnq9YGqL35xgTI/c=";
    name = "bcm27xx_bcm2712-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm27xx/bcm2712/sha256sums";
  };
  imagebuilder = {
    sha256 = "e0cd2f6eeeca46dd00f2a16965c6e1a4f49e0a9c04129f32005a21816ae08d66";
    filename = "immortalwrt-imagebuilder-24.10.6-bcm27xx-bcm2712.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-wkicKsqO3RyotgQC/tYKWnrH9vE4E0llFPA4M20OywE=";
    name = "bcm27xx_bcm2712-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm27xx/bcm2712/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a76";
    linux_kernel = {
      release = "1";
      vermagic = "74591f6df9fc9ff9ceff2ecf3f68c736";
      version = "6.6.133";
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
    kmods_target = "6.6.133-1-74591f6df9fc9ff9ceff2ecf3f68c736";
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
  kmods."6.6.133-1-74591f6df9fc9ff9ceff2ecf3f68c736" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm27xx/bcm2712/kmods/6.6.133-1-74591f6df9fc9ff9ceff2ecf3f68c736/";
    sourceInfo = {
      hash = "sha256-j47PQB9e+w7SNY4b/XjvATAUpLpr1BYXk8GCicvXVhg=";
      name = "kmods-bcm27xx_bcm2712-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm27xx/bcm2712/kmods/6.6.133-1-74591f6df9fc9ff9ceff2ecf3f68c736/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm27xx/bcm2712/packages/";
    sourceInfo = {
      hash = "sha256-6oUUUeilPNpK4TKYJSiuenW+NTq/oznkThKT71yrenc=";
      name = "bcm27xx_bcm2712-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm27xx/bcm2712/packages/Packages";
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
