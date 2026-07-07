# 25.12.1 layerscape/armv7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/layerscape/armv7/";
  sha256sums = {
    hash = "sha256-53pJ3J92fYzZVKEGB4SR8crRMWHQltelW+hw+Y4SNCo=";
    name = "layerscape_armv7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/layerscape/armv7/sha256sums";
  };
  imagebuilder = {
    sha256 = "3ed13ae197ad65da01ee461c518a3fe5200fdf2256a7096e8e38122c254e7274";
    filename = "immortalwrt-imagebuilder-25.12.1-layerscape-armv7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-thTfAKCjBRlLqLYcRP9bUHazXBfZBeO5sy4XiztGF/M=";
    name = "layerscape_armv7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/layerscape/armv7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "bf5dfeb34c61e4f057970efbc5a67d90";
      version = "6.12.94";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
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
      "kmod-usb-dwc3"
      "kmod-usb-storage"
      "kmod-usb3"
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
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.94-1-bf5dfeb34c61e4f057970efbc5a67d90";
    profiles = {
      fsl_ls1021a-iot-sdboot = {
        device_packages = [ ];
      };
      fsl_ls1021a-twr = {
        device_packages = [ ];
      };
      fsl_ls1021a-twr-sdboot = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.94-1-bf5dfeb34c61e4f057970efbc5a67d90" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/layerscape/armv7/kmods/6.12.94-1-bf5dfeb34c61e4f057970efbc5a67d90/";
    sourceInfo = {
      hash = "sha256-Sd1BpJvx7WWokSPKpQ4bQIU82TsnFwwLCEyRXHtvYNI=";
      name = "kmods-layerscape_armv7-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/layerscape/armv7/kmods/6.12.94-1-bf5dfeb34c61e4f057970efbc5a67d90/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/layerscape/armv7/packages/";
    sourceInfo = {
      hash = "sha256-d1oIlyq8gxHfIP/03zF+RZm+l0OI3d031CopSOetqhA=";
      name = "layerscape_armv7-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/layerscape/armv7/packages/packages.adb";
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
