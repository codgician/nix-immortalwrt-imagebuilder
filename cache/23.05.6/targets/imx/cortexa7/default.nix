# 23.05.6 imx/cortexa7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/imx/cortexa7/";
  sha256sums = {
    hash = "sha256-nK96GfWcdG/fUA6ZegMX19d4unvBJq8JlOBfk5NEiEo=";
    name = "imx_cortexa7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/imx/cortexa7/sha256sums";
  };
  imagebuilder = {
    sha256 = "ad55d76f99d0ed80dd1f4fed3a333a70589f09a281feec6f39cc7153a0b4aa82";
    filename = "immortalwrt-imagebuilder-23.05.6-imx-cortexa7.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-/tiidT5TiGvFw/t+Bmb3Qz+PL0NXfm528KNxKz2+n1M=";
    name = "imx_cortexa7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/imx/cortexa7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "21b106b85b7699029d7450be4dbae8ae";
      version = "5.15.189";
    };
    default_packages = [
      "base-files"
      "blkid"
      "block-mount"
      "busybox"
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
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "mkf2fs"
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
    kmods_target = "5.15.189-1-21b106b85b7699029d7450be4dbae8ae";
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
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/imx/cortexa7/packages/";
    sourceInfo = {
      hash = "sha256-wrHEqBR7xYqSrGV4rms3GWfG4VUhpP0XVW81LxMHnyE=";
      name = "imx_cortexa7-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/imx/cortexa7/packages/Packages";
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
