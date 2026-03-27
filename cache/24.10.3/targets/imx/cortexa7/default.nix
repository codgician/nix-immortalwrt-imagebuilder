# 24.10.3 imx/cortexa7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/imx/cortexa7/";
  sha256sums = {
    hash = "sha256-SN2pR+9HdY//XMdFkCGP6qlUXlRgyrx8kpIM32WZNDs=";
    name = "imx_cortexa7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/imx/cortexa7/sha256sums";
  };
  imagebuilder = {
    sha256 = "75a7f3a542e9ae9bb62909f648cdcd6e9fdd9effceaaa4a2a552e775054006f8";
    filename = "immortalwrt-imagebuilder-24.10.3-imx-cortexa7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-TZAum4n0P5slJ2J4PKZWgwHMUtPRMulgtRNFnoOg/r4=";
    name = "imx_cortexa7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/imx/cortexa7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "269db74bfc614350940daf3b030f60fc";
      version = "6.6.104";
    };
    default_packages = [
      "base-files"
      "blkid"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
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
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.104-1-269db74bfc614350940daf3b030f60fc";
    profiles = {
      technexion_imx7d-pico-pi = {
        device_packages = [
          "kmod-sound-core"
          "kmod-sound-soc-imx"
          "kmod-sound-soc-imx-sgtl5000"
          "kmod-can"
          "kmod-can-flexcan"
          "kmod-can-raw"
          "kmod-leds-gpio"
          "kmod-input-touchscreen-edt-ft5x06"
          "kmod-usb-hid"
          "kmod-btsdio"
          "kmod-brcmfmac"
          "brcmfmac-firmware-4339-sdio"
          "cypress-nvram-4339-sdio"
        ];
      };
    };
  };
  kmods."6.6.104-1-269db74bfc614350940daf3b030f60fc" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/imx/cortexa7/kmods/6.6.104-1-269db74bfc614350940daf3b030f60fc/";
    sourceInfo = {
      hash = "sha256-31CNEChl9J/0rgNJUUGa5vCoJFZJIgwRJLs8NEbH+UE=";
      name = "kmods-imx_cortexa7-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/imx/cortexa7/kmods/6.6.104-1-269db74bfc614350940daf3b030f60fc/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/imx/cortexa7/packages/";
    sourceInfo = {
      hash = "sha256-+9I5jKaNbkPStRwixK4FsBweKLd1RXaEK9HNKL9d2pw=";
      name = "imx_cortexa7-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/imx/cortexa7/packages/Packages";
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
