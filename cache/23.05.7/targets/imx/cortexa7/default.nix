# 23.05.7 imx/cortexa7
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/imx/cortexa7/";
  sha256sums = {
    hash = "sha256-+9DfvhkubkdghGV+m8Di9t3Au5HcgP441P3EY4mdwUM=";
    name = "imx_cortexa7-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/imx/cortexa7/sha256sums";
  };
  imagebuilder = {
    sha256 = "0a05e1a23b875319f3aab17904042264cea971a145e803713a6667139f10a7df";
    filename = "immortalwrt-imagebuilder-23.05.7-imx-cortexa7.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-60Q6dF5d0uND32u3+V/70aK49AXp6hv362CuStjn8hE=";
    name = "imx_cortexa7-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/imx/cortexa7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "21b106b85b7699029d7450be4dbae8ae";
      version = "5.15.195";
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
    kmods_target = "5.15.195-1-21b106b85b7699029d7450be4dbae8ae";
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
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/imx/cortexa7/packages/";
    sourceInfo = {
      hash = "sha256-0TiZnbBDfwgTOlwhBkrKnpO12Ev9bQDPLJoaGUErsTc=";
      name = "imx_cortexa7-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/imx/cortexa7/packages/Packages";
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
