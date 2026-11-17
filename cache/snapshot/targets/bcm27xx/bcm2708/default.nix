# snapshot bcm27xx/bcm2708
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2708/";
  sha256sums = {
    hash = "sha256-SRi7KNf0WACxX/K/5u/WfQWv02l58bLl0guLJwNU/PU=";
    name = "bcm27xx_bcm2708-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2708/sha256sums";
  };
  imagebuilder = {
    sha256 = "cf95b25d37fc4cf5c0c4b09739565a3368ba15d6463c5ceb28879744267fbb41";
    filename = "immortalwrt-imagebuilder-bcm27xx-bcm2708.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-8RXL92bc+LfNtfylhsrwRPEiUf4tDTK5H8czKTClKoA=";
    name = "bcm27xx_bcm2708-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2708/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm1176jzf-s_vfp";
    linux_kernel = {
      release = "1";
      vermagic = "f70d7d65c08b1044849631a33bb0dff1";
      version = "6.18.60";
    };
    default_packages = [
      "apk-openssl"
      "automount"
      "base-files"
      "bcm27xx-gpu-fw"
      "bcm27xx-utils"
      "ca-bundle"
      "cpufreq"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-fs-vfat"
      "kmod-nft-offload"
      "kmod-nls-cp437"
      "kmod-nls-iso8859-1"
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
      "video-support"
    ];
    kmods_target = "6.18.60-1-f70d7d65c08b1044849631a33bb0dff1";
    profiles = {
      rpi = {
        device_packages = [
          "cypress-firmware-43430-sdio"
          "brcmfmac-nvram-43430-sdio"
          "kmod-brcmfmac"
          "wpad-openssl"
        ];
      };
    };
  };
  kmods."6.18.60-1-f70d7d65c08b1044849631a33bb0dff1" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2708/kmods/6.18.60-1-f70d7d65c08b1044849631a33bb0dff1/";
    sourceInfo = {
      hash = "sha256-UF2YLWelzAwnmKArvxrHSnYkVoKozFkhB53QZ4kuNuA=";
      name = "kmods-bcm27xx_bcm2708-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2708/kmods/6.18.60-1-f70d7d65c08b1044849631a33bb0dff1/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2708/packages/";
    sourceInfo = {
      hash = "sha256-FVWDnnE4NhcbdU8pWsyLpVfc0zT8WEpJZehFxIe+0sk=";
      name = "bcm27xx_bcm2708-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2708/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_arm1176jzf-s_vfp";
  feeds = import ./../../../packages/arm_arm1176jzf-s_vfp.nix;
}
