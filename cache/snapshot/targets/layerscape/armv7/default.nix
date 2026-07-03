# snapshot layerscape/armv7
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv7/";
  sha256sums = {
    hash = "sha256-xuSNW8fU6AcMWEZUQ6xG1v5e+8cgIkeyE04E2HS43wM=";
    name = "layerscape_armv7-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv7/sha256sums";
  };
  imagebuilder = {
    sha256 = "3b0a8012743028a3ea7579201cb14b7f756647ad9582803c55b187edfa37b544";
    filename = "immortalwrt-imagebuilder-layerscape-armv7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-aGnwszhTr+wblwY7g8rUxdjXQ0iICs+DiPgyrsXaQjk=";
    name = "layerscape_armv7-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "5850c65b77051ec2767113f7c82107fa";
      version = "6.18.37";
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
    kmods_target = "6.18.37-1-5850c65b77051ec2767113f7c82107fa";
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
  kmods."6.18.37-1-5850c65b77051ec2767113f7c82107fa" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv7/kmods/6.18.37-1-5850c65b77051ec2767113f7c82107fa/";
    sourceInfo = {
      hash = "sha256-J8gdiqbUhoEp2/88KFuZAlu4iVZXgQ5ASyT4NmVzdSs=";
      name = "kmods-layerscape_armv7-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv7/kmods/6.18.37-1-5850c65b77051ec2767113f7c82107fa/packages.adb";
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
      hash = "sha256-5r3GiUbZmjOjkLROvNhJBSY5EWpoYLNKuGJNq50pk0Y=";
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
