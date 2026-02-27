# snapshot imx/cortexa7
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/imx/cortexa7/";
  sha256sums = {
    hash = "sha256-+aJMyTA5HBd6ddOGFVVVvm/A7ltsw9zN1NZ1hufYpuE=";
    name = "imx_cortexa7-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/imx/cortexa7/sha256sums";
  };
  imagebuilder = {
    sha256 = "e8c3a6e17885b2b7a6b61005d5fcd454f01c8c16d1c21bee2d367a1396785fed";
    filename = "immortalwrt-imagebuilder-imx-cortexa7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-SJTHNYQc7D08Hvj1C2l/vJYs5NQLDb1A09NmouINVvg=";
    name = "imx_cortexa7-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/imx/cortexa7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "bfd41888f0906bd14b9e89c5314c5893";
      version = "6.12.67";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "blkid"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.67-1-bfd41888f0906bd14b9e89c5314c5893";
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
  kmods."6.12.67-1-bfd41888f0906bd14b9e89c5314c5893" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/imx/cortexa7/kmods/6.12.67-1-bfd41888f0906bd14b9e89c5314c5893/";
    sourceInfo = {
      hash = "sha256-CnkxsXZ+7639uee74Cvvjuwsa3Q7Tafh8VaoJjgox6Q=";
      name = "kmods-imx_cortexa7-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/imx/cortexa7/kmods/6.12.67-1-bfd41888f0906bd14b9e89c5314c5893/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/imx/cortexa7/packages/";
    sourceInfo = {
      hash = "sha256-zkFbm8Mi76TFFxorSyLsTu4kJ3wbf5UZMm7W+YSVzHg=";
      name = "imx_cortexa7-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/imx/cortexa7/packages/packages.adb";
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
