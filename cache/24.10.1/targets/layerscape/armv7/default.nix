# 24.10.1 layerscape/armv7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/layerscape/armv7/";
  sha256sums = {
    hash = "sha256-A09ferbXuXWZOv0vbmE1m02LRR1MYHq4WeOOwP/zkmA=";
    name = "layerscape_armv7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/layerscape/armv7/sha256sums";
  };
  imagebuilder = {
    sha256 = "0a1bd0eefd06100ab77e240ca7dda13571b98558e06730cb785bcd1d05be8d10";
    filename = "immortalwrt-imagebuilder-24.10.1-layerscape-armv7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-zaPZ3sdNXsRKA7wA4HRpr96aqkquduQLydX+ocJmUh8=";
    name = "layerscape_armv7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/layerscape/armv7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "402b6b0c88e542159de686be3c422acd";
      version = "6.6.86";
    };
    default_packages = [
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
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-usb-dwc3"
      "kmod-usb-storage"
      "kmod-usb3"
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
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.86-1-402b6b0c88e542159de686be3c422acd";
    profiles = {
      fsl_ls1021a-iot-sdboot = {
        device_packages = [ ];
      };
      fsl_ls1021a-twr = {
        device_packages = [ "~layerscape-rcw" ];
      };
      fsl_ls1021a-twr-sdboot = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.86-1-402b6b0c88e542159de686be3c422acd" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/layerscape/armv7/kmods/6.6.86-1-402b6b0c88e542159de686be3c422acd/";
    sourceInfo = {
      hash = "sha256-OrLQhTUKEtWcsPnvh2N0kHnjYh+7hR8ClvZvoP1DhWY=";
      name = "kmods-layerscape_armv7-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/layerscape/armv7/kmods/6.6.86-1-402b6b0c88e542159de686be3c422acd/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/layerscape/armv7/packages/";
    sourceInfo = {
      hash = "sha256-OAxL/zv26Y3fO67LUaqXUywsD7DMq+OaNFECpf7eXUk=";
      name = "layerscape_armv7-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/layerscape/armv7/packages/Packages";
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
