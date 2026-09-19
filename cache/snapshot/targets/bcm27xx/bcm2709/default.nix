# snapshot bcm27xx/bcm2709
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2709/";
  sha256sums = {
    hash = "sha256-+J4jGd6d+kINA+GIknLlri1a9aHl8nZ1oKTnBNYFLtQ=";
    name = "bcm27xx_bcm2709-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2709/sha256sums";
  };
  imagebuilder = {
    sha256 = "547ca4aeea1f60bd994758cead40900cdd0a2c1db524d09dede1ab60f47be03a";
    filename = "immortalwrt-imagebuilder-bcm27xx-bcm2709.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-7ib7Qyurb8LsHl3g5hS8dbhv0mAItAi58Ehgg1QDDPk=";
    name = "bcm27xx_bcm2709-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2709/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "cfff6204ccf2e6bbceaebb509b94ed63";
      version = "6.18.52";
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
    ];
    kmods_target = "6.18.52-1-cfff6204ccf2e6bbceaebb509b94ed63";
    profiles = {
      rpi-2 = {
        device_packages = [
          "cypress-firmware-43430-sdio"
          "brcmfmac-nvram-43430-sdio"
          "cypress-firmware-43455-sdio"
          "brcmfmac-nvram-43455-sdio"
          "kmod-brcmfmac"
          "wpad-openssl"
        ];
      };
    };
  };
  kmods."6.18.52-1-cfff6204ccf2e6bbceaebb509b94ed63" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2709/kmods/6.18.52-1-cfff6204ccf2e6bbceaebb509b94ed63/";
    sourceInfo = {
      hash = "sha256-Q4tEpfdquOufcL1HTAqK7mN0tIeUE+gahIc91sUxYxU=";
      name = "kmods-bcm27xx_bcm2709-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2709/kmods/6.18.52-1-cfff6204ccf2e6bbceaebb509b94ed63/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2709/packages/";
    sourceInfo = {
      hash = "sha256-mvdUKDZfcEgB1xftI4zrW7K8diEFqeeRL9Up0m7gnZY=";
      name = "bcm27xx_bcm2709-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2709/packages/packages.adb";
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
