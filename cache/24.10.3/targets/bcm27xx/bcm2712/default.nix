# 24.10.3 bcm27xx/bcm2712
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bcm27xx/bcm2712/";
  sha256sums = {
    hash = "sha256-iwAb9gamnA4aX0WiJ9U4rlGlR1y3PfjlIXdPsCPN6hU=";
    name = "bcm27xx_bcm2712-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bcm27xx/bcm2712/sha256sums";
  };
  imagebuilder = {
    sha256 = "926af1848e72b3212bfaedfd0bd1a8ca8d3e6a4790aecaf432fa5dc39b4e9786";
    filename = "immortalwrt-imagebuilder-24.10.3-bcm27xx-bcm2712.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Nb2oNb49LpKfJA7aQY7+fmKiGSNIsoY9f1e3DuGmxGU=";
    name = "bcm27xx_bcm2712-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bcm27xx/bcm2712/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a76";
    linux_kernel = {
      release = "1";
      vermagic = "4ce7bff7e630a1420cf7fb5f89d44105";
      version = "6.6.104";
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
    kmods_target = "6.6.104-1-4ce7bff7e630a1420cf7fb5f89d44105";
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
  kmods."6.6.104-1-4ce7bff7e630a1420cf7fb5f89d44105" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bcm27xx/bcm2712/kmods/6.6.104-1-4ce7bff7e630a1420cf7fb5f89d44105/";
    sourceInfo = {
      hash = "sha256-qD7kg5YAtLbIgO78BJwWaIRjPBgRGzh8Ruv/3m63C5I=";
      name = "kmods-bcm27xx_bcm2712-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bcm27xx/bcm2712/kmods/6.6.104-1-4ce7bff7e630a1420cf7fb5f89d44105/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bcm27xx/bcm2712/packages/";
    sourceInfo = {
      hash = "sha256-7FV06jD+g2exVDWAYid9VslYEVC+kx9jCRO8//TlvcM=";
      name = "bcm27xx_bcm2712-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bcm27xx/bcm2712/packages/Packages";
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
