# 25.12.0-rc1 imx/cortexa7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/imx/cortexa7/";
  sha256sums = {
    hash = "sha256-Xj3Jcp7MC+t+AWW/4Ytk2mgY7hg4nvWnQKqSViLJSFs=";
    name = "imx_cortexa7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/imx/cortexa7/sha256sums";
  };
  imagebuilder = {
    sha256 = "9d4c0fdd6184894d76eb4cc8460ff3bac20e6dbbc6768979da4cc651140c88f3";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-imx-cortexa7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-UxLqs6X5jwru3YktpQOyle1X5o6xahEacufF62Ku5l8=";
    name = "imx_cortexa7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/imx/cortexa7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "ee48e7cf75798bde11c8fd892bd6a7f4";
      version = "6.12.74";
    };
    default_packages = [
      "apk-openssl"
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
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
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
    kmods_target = "6.12.74-1-ee48e7cf75798bde11c8fd892bd6a7f4";
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
  kmods."6.12.74-1-ee48e7cf75798bde11c8fd892bd6a7f4" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/imx/cortexa7/kmods/6.12.74-1-ee48e7cf75798bde11c8fd892bd6a7f4/";
    sourceInfo = {
      hash = "sha256-c9uomLCsph5BUlr8QbCgMzRvRp7dG7/kEvLnAt0KcFM=";
      name = "kmods-imx_cortexa7-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/imx/cortexa7/kmods/6.12.74-1-ee48e7cf75798bde11c8fd892bd6a7f4/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/imx/cortexa7/packages/";
    sourceInfo = {
      hash = "sha256-OPtDcV7zRnP12jNedjpvWHKK5uUxgQ91FCXyazSfI5M=";
      name = "imx_cortexa7-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/imx/cortexa7/packages/packages.adb";
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
