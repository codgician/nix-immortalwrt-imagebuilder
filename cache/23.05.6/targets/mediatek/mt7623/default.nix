# 23.05.6 mediatek/mt7623
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/mediatek/mt7623/";
  sha256sums = {
    hash = "sha256-rMhwDKkjrhv2L8nRayt/auuEoeRFmwJG+N5smHp57CY=";
    name = "mediatek_mt7623-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/mediatek/mt7623/sha256sums";
  };
  imagebuilder = {
    sha256 = "2a250025610615f323123a5f644eee289c1768fcea2de62a17430668d7e6edaa";
    filename = "immortalwrt-imagebuilder-23.05.6-mediatek-mt7623.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-3s8WMSZJe2Yjif5TDtE62HnFj6dqbQq6LnDDCX0rsxU=";
    name = "mediatek_mt7623-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/mediatek/mt7623/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "2426f402edf0260d68e2d091955576d2";
      version = "5.15.189";
    };
    default_packages = [
      "autocore"
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-crypto-hw-safexcel"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "5.15.189-1-2426f402edf0260d68e2d091955576d2";
    profiles = {
      bananapi_bpi-r2 = {
        device_packages = [
          "mkf2fs"
          "e2fsprogs"
          "kmod-usb3"
          "kmod-ata-ahci"
        ];
      };
      unielec_u7623-02 = {
        device_packages = [
          "kmod-fs-vfat"
          "kmod-nls-cp437"
          "kmod-nls-iso8859-1"
          "kmod-mmc"
          "mkf2fs"
          "e2fsprogs"
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-usb3"
          "kmod-ata-ahci"
        ];
      };
      unielec_u7623-02-emmc-512m-legacy = {
        device_packages = [
          "kmod-fs-vfat"
          "kmod-nls-cp437"
          "kmod-nls-iso8859-1"
          "kmod-mmc"
          "mkf2fs"
          "e2fsprogs"
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-usb3"
          "kmod-ata-ahci"
          "partx-utils"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/mediatek/mt7623/packages/";
    sourceInfo = {
      hash = "sha256-p6SibUMVewAuJt91YoXYynfIosx8jxlNOlrpy2/CZsw=";
      name = "mediatek_mt7623-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/mediatek/mt7623/packages/Packages";
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
