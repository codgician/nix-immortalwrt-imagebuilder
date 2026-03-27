# 24.10.1 bcm27xx/bcm2709
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm27xx/bcm2709/";
  sha256sums = {
    hash = "sha256-JQpd5n8arBhzlBtywku7mH2nQott4nuXIHWC4Z1ac1w=";
    name = "bcm27xx_bcm2709-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm27xx/bcm2709/sha256sums";
  };
  imagebuilder = {
    sha256 = "fa217330300bcce221d87969a574ee398deab4dc1df93d07ca9b26576ab3e4f4";
    filename = "immortalwrt-imagebuilder-24.10.1-bcm27xx-bcm2709.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-VK5W+OyZtMxMSsg/8wayvMoogCRYSwa3cINv90sXI9Y=";
    name = "bcm27xx_bcm2709-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm27xx/bcm2709/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "becc4887f147477e48a635bca1911c6c";
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
    kmods_target = "6.6.86-1-becc4887f147477e48a635bca1911c6c";
    profiles = {
      rpi-2 = {
        device_packages = [
          "cypress-firmware-43430-sdio"
          "brcmfmac-nvram-43430-sdio"
          "cypress-firmware-43455-sdio"
          "brcmfmac-nvram-43455-sdio"
          "kmod-brcmfmac"
          "wpad-openssl"
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.86-1-becc4887f147477e48a635bca1911c6c" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm27xx/bcm2709/kmods/6.6.86-1-becc4887f147477e48a635bca1911c6c/";
    sourceInfo = {
      hash = "sha256-ud92K2ls8Ua2FxBrOXxmeM6kkwiPdb2XTum+Yqp6U+M=";
      name = "kmods-bcm27xx_bcm2709-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm27xx/bcm2709/kmods/6.6.86-1-becc4887f147477e48a635bca1911c6c/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm27xx/bcm2709/packages/";
    sourceInfo = {
      hash = "sha256-D1fmx3n9XYBRiMIo0oAab5XVZCtEFXJdFprciSf5ssY=";
      name = "bcm27xx_bcm2709-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm27xx/bcm2709/packages/Packages";
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
