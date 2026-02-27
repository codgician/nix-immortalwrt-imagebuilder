# snapshot layerscape/armv7
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/layerscape/armv7/";
  sha256sums = {
    hash = "sha256-xBV2yVlCxQGFzO2VKXaiIZlp/zGfkETz2Yhb7dMaJos=";
    name = "layerscape_armv7-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/layerscape/armv7/sha256sums";
  };
  imagebuilder = {
    sha256 = "5f39bda658fc89c3a03c3ee8aa2c4a893d642166a6709cca79fe6f493c2c0e0c";
    filename = "immortalwrt-imagebuilder-layerscape-armv7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-JUfWkAWWVBzJBmtkPhoKyJaSyZgtxxUB47cepZ/F5fc=";
    name = "layerscape_armv7-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/layerscape/armv7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "02c9b782c913fafcd5fd629b7d65f2b1";
      version = "6.12.67";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-nft-offload"
      "kmod-usb-dwc3"
      "kmod-usb-storage"
      "kmod-usb3"
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
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.67-1-02c9b782c913fafcd5fd629b7d65f2b1";
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
  kmods."6.12.67-1-02c9b782c913fafcd5fd629b7d65f2b1" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/layerscape/armv7/kmods/6.12.67-1-02c9b782c913fafcd5fd629b7d65f2b1/";
    sourceInfo = {
      hash = "sha256-c2vCQcdP5tHhKlG4Hbfp+qBbCE/bTEv1zFEJn7uFwe4=";
      name = "kmods-layerscape_armv7-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/layerscape/armv7/kmods/6.12.67-1-02c9b782c913fafcd5fd629b7d65f2b1/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/layerscape/armv7/packages/";
    sourceInfo = {
      hash = "sha256-UF961oIURvCKfzYdQfMfAn6vGEVabJ0jwkQdPPbr5NI=";
      name = "layerscape_armv7-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/layerscape/armv7/packages/packages.adb";
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
