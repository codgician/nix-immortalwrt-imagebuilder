# snapshot layerscape/armv7
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv7/";
  sha256sums = {
    hash = "sha256-ovJMdJHRSRU2yNBhHWTjSiBt2H6UDPAZZyAKow1ZP/I=";
    name = "layerscape_armv7-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv7/sha256sums";
  };
  imagebuilder = {
    sha256 = "b2858db41e58c3fe670adf2fab1f0acd563cf00f03575b1262f0de70cd36da84";
    filename = "immortalwrt-imagebuilder-layerscape-armv7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-+RyV6Woms1p6l2vqNevA9E4btPpwCk/0S8Fnh9aErQA=";
    name = "layerscape_armv7-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "82bf88ac7f1bd9fa8f70a119fb358c22";
      version = "6.12.74";
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
    kmods_target = "6.12.74-1-82bf88ac7f1bd9fa8f70a119fb358c22";
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
  kmods."6.12.74-1-82bf88ac7f1bd9fa8f70a119fb358c22" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv7/kmods/6.12.74-1-82bf88ac7f1bd9fa8f70a119fb358c22/";
    sourceInfo = {
      hash = "sha256-VuDYDS8ss0NMWuxWpCg/b06TZQBCwsHZ+cjvU9ubatg=";
      name = "kmods-layerscape_armv7-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv7/kmods/6.12.74-1-82bf88ac7f1bd9fa8f70a119fb358c22/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv7/packages/";
    sourceInfo = {
      hash = "sha256-niYlUkrrEx8AaqRPAoR5QG6PL+B5jqWczLwdy/UlHG8=";
      name = "layerscape_armv7-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv7/packages/packages.adb";
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
