# 24.10.0 bcm27xx/bcm2710
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm27xx/bcm2710/";
  sha256sums = {
    hash = "sha256-FTOCb6HfxG2lxWVEBUsdArzbN6ha7d1qNAWxZPG4ZZ4=";
    name = "bcm27xx_bcm2710-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm27xx/bcm2710/sha256sums";
  };
  imagebuilder = {
    sha256 = "eb530be85aebc8bc7499f05ae69f503909d732b0ce918dbd95ec92861686a11c";
    filename = "immortalwrt-imagebuilder-24.10.0-bcm27xx-bcm2710.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-cQ+GTXCiS05pMCo5Yu7l35i8PLYIDdemuBJd3R0RwzE=";
    name = "bcm27xx_bcm2710-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm27xx/bcm2710/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "bd2b7555472b170865f7125d43d63ad1";
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
    kmods_target = "6.6.73-1-bd2b7555472b170865f7125d43d63ad1";
    profiles = {
      rpi-3 = {
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
  kmods."6.6.73-1-bd2b7555472b170865f7125d43d63ad1" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm27xx/bcm2710/kmods/6.6.73-1-bd2b7555472b170865f7125d43d63ad1/";
    sourceInfo = {
      hash = "sha256-uyihqKDNuxj0dKUft3glOXT3vCQl52WSFaLnRsOGPoE=";
      name = "kmods-bcm27xx_bcm2710-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm27xx/bcm2710/kmods/6.6.73-1-bd2b7555472b170865f7125d43d63ad1/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm27xx/bcm2710/packages/";
    sourceInfo = {
      hash = "sha256-dBBL1ibG3wC8D75VfxGG+wzGg16L0KDVIautZdY5Xno=";
      name = "bcm27xx_bcm2710-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm27xx/bcm2710/packages/Packages";
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
