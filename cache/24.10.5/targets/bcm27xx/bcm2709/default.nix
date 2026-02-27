# 24.10.5 bcm27xx/bcm2709
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm27xx/bcm2709/";
  sha256sums = {
    hash = "sha256-QijIGM+ogM3SRG0JPlyVWuprrCiy2npeDKyJujRbpAY=";
    name = "bcm27xx_bcm2709-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm27xx/bcm2709/sha256sums";
  };
  imagebuilder = {
    sha256 = "e8512523bfcd072f0b8600afcb995a0b202f8630c652e4fad0be3384fe836da2";
    filename = "immortalwrt-imagebuilder-24.10.5-bcm27xx-bcm2709.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-44J2gl6mVHlMC+khtg+/1Xge8PCRNEtrh/uzRoGFEoY=";
    name = "bcm27xx_bcm2709-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm27xx/bcm2709/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "8b5d9c75e91a19c8bebe767b9cb5da4b";
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
    kmods_target = "6.6.122-1-8b5d9c75e91a19c8bebe767b9cb5da4b";
    profiles = {
      rpi-2 = {
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
  kmods."6.6.122-1-8b5d9c75e91a19c8bebe767b9cb5da4b" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm27xx/bcm2709/kmods/6.6.122-1-8b5d9c75e91a19c8bebe767b9cb5da4b/";
    sourceInfo = {
      hash = "sha256-WfW0LH0CsGJLD2pM5pYw7DlMPcEgcd01cnHvEuH43I8=";
      name = "kmods-bcm27xx_bcm2709-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm27xx/bcm2709/kmods/6.6.122-1-8b5d9c75e91a19c8bebe767b9cb5da4b/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm27xx/bcm2709/packages/";
    sourceInfo = {
      hash = "sha256-ceMe53IV3bCJzlqtT1uBc9I3nixKg0Dvb+KnSDg/ans=";
      name = "bcm27xx_bcm2709-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm27xx/bcm2709/packages/Packages";
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
