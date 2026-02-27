# 24.10.5 bcm27xx/bcm2712
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm27xx/bcm2712/";
  sha256sums = {
    hash = "sha256-/NA1FjfxGaDMHvPE1WqFx9M9T4nOBC2X6QDsi9McTSM=";
    name = "bcm27xx_bcm2712-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm27xx/bcm2712/sha256sums";
  };
  imagebuilder = {
    sha256 = "b76b86ad8201b48fe14f886c5df0aa190af70a7d4c0cbbc70399064b5f2ef288";
    filename = "immortalwrt-imagebuilder-24.10.5-bcm27xx-bcm2712.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-3vrvb+rzH3OLgp7OcZjzKANWf/L3T9WWo0Nv8CeKKUs=";
    name = "bcm27xx_bcm2712-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm27xx/bcm2712/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a76";
    linux_kernel = {
      release = "1";
      vermagic = "74591f6df9fc9ff9ceff2ecf3f68c736";
      version = "6.6.122";
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
    kmods_target = "6.6.122-1-74591f6df9fc9ff9ceff2ecf3f68c736";
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
  kmods."6.6.122-1-74591f6df9fc9ff9ceff2ecf3f68c736" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm27xx/bcm2712/kmods/6.6.122-1-74591f6df9fc9ff9ceff2ecf3f68c736/";
    sourceInfo = {
      hash = "sha256-uCQtW/z3IVONYs3bvcXwh+igb7JBpaB0YNMTrCfakqU=";
      name = "kmods-bcm27xx_bcm2712-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm27xx/bcm2712/kmods/6.6.122-1-74591f6df9fc9ff9ceff2ecf3f68c736/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm27xx/bcm2712/packages/";
    sourceInfo = {
      hash = "sha256-DrbPpE20BOkDZTArkQGgAVXf9hsn8hCIAYKSdxaKd5k=";
      name = "bcm27xx_bcm2712-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm27xx/bcm2712/packages/Packages";
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
