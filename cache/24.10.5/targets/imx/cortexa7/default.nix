# 24.10.5 imx/cortexa7
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/imx/cortexa7/";
  sha256sums = {
    hash = "sha256-zj0toGPqSX7EE0trL81F1ObwsvBKG/5bBWFt3Wu/3fw=";
    name = "imx_cortexa7-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/imx/cortexa7/sha256sums";
  };
  imagebuilder = {
    sha256 = "6f5a73545dab5b38ee5debcb11fa5beb73040c4114548cd6db9115354763dac8";
    filename = "immortalwrt-imagebuilder-24.10.5-imx-cortexa7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-ySQDZLWURY5GWyduxiDXIRha33tZYPfVvqRlyckrFqM=";
    name = "imx_cortexa7-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/imx/cortexa7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "d9b6a8d94e35cb26b790bfe9e827dd5b";
      version = "6.6.122";
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
    kmods_target = "6.6.122-1-d9b6a8d94e35cb26b790bfe9e827dd5b";
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
  kmods."6.6.122-1-d9b6a8d94e35cb26b790bfe9e827dd5b" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/imx/cortexa7/kmods/6.6.122-1-d9b6a8d94e35cb26b790bfe9e827dd5b/";
    sourceInfo = {
      hash = "sha256-LBtBdCDTUn05sGmrIFe3gc8jlBDspaamZiSgidbN6/E=";
      name = "kmods-imx_cortexa7-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/imx/cortexa7/kmods/6.6.122-1-d9b6a8d94e35cb26b790bfe9e827dd5b/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/imx/cortexa7/packages/";
    sourceInfo = {
      hash = "sha256-lAyO5jAkvhelZtnWo6I56hzBpKem04wXQRJez+FdWYo=";
      name = "imx_cortexa7-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/imx/cortexa7/packages/Packages";
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
