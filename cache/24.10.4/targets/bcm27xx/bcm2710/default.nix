# 24.10.4 bcm27xx/bcm2710
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm27xx/bcm2710/";
  sha256sums = {
    hash = "sha256-6frs39jiXRMK550FArvDZlYRk156OnJSjjc7XMt6i8Q=";
    name = "bcm27xx_bcm2710-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm27xx/bcm2710/sha256sums";
  };
  imagebuilder = {
    sha256 = "60564e028484ee6ebfec4482d9e66204b27a280b46577a8981bc0c489055af2b";
    filename = "immortalwrt-imagebuilder-24.10.4-bcm27xx-bcm2710.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-p//EYBOP/t9W+7u9jMepTVuQcXlRbwZl974AQUHKaUI=";
    name = "bcm27xx_bcm2710-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm27xx/bcm2710/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "f20bef1193d5baefb2e9235d7c02dbf3";
      version = "6.6.110";
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
    kmods_target = "6.6.110-1-f20bef1193d5baefb2e9235d7c02dbf3";
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
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.110-1-f20bef1193d5baefb2e9235d7c02dbf3" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm27xx/bcm2710/kmods/6.6.110-1-f20bef1193d5baefb2e9235d7c02dbf3/";
    sourceInfo = {
      hash = "sha256-AifYzBrmmbbSjGMgI5fRZrmbaqZ3XhZyEqoDh2xIKr0=";
      name = "kmods-bcm27xx_bcm2710-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm27xx/bcm2710/kmods/6.6.110-1-f20bef1193d5baefb2e9235d7c02dbf3/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm27xx/bcm2710/packages/";
    sourceInfo = {
      hash = "sha256-NgxjMB6WyBFK1PD/4QK+BFNJTga2nC5flymrNlsRUpU=";
      name = "bcm27xx_bcm2710-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm27xx/bcm2710/packages/Packages";
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
