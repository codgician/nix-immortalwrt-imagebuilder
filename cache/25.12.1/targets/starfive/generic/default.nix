# 25.12.1 starfive/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/starfive/generic/";
  sha256sums = {
    hash = "sha256-yYjnzvB/+bm2+a1iYX/LNHXJVodAD/G62jGXECM1FIU=";
    name = "starfive_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/starfive/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "d41a18102c56558c5e466dd5f60c1ed696d1de419430c9b785282bc57f5cad6d";
    filename = "immortalwrt-imagebuilder-25.12.1-starfive-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-aVCOiZuMmPfcWPu/2DWSWEFQMDlsFsBUfWxoaI0Z5S8=";
    name = "starfive_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/starfive/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "6c192632dbab05a48ea742b749fecffb";
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
      "firewall4"
      "fstools"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.94-1-6c192632dbab05a48ea742b749fecffb";
    profiles = {
      beaglev-starlight = {
        device_packages = [ ];
      };
      visionfive-v1 = {
        device_packages = [
          "kmod-eeprom-at24"
          "kmod-brcmfmac"
          "cypress-firmware-43430-sdio"
          "wpad-openssl"
        ];
      };
      "visionfive2-v1.2a" = {
        device_packages = [ "kmod-eeprom-at24" ];
      };
      "visionfive2-v1.3b" = {
        device_packages = [ "kmod-eeprom-at24" ];
      };
    };
  };
  kmods."6.12.94-1-6c192632dbab05a48ea742b749fecffb" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/starfive/generic/kmods/6.12.94-1-6c192632dbab05a48ea742b749fecffb/";
    sourceInfo = {
      hash = "sha256-DrwyCHHidB6CqKZ6vjHbYklFaVACP+8Mi+m2l2g+IZM=";
      name = "kmods-starfive_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/starfive/generic/kmods/6.12.94-1-6c192632dbab05a48ea742b749fecffb/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/starfive/generic/packages/";
    sourceInfo = {
      hash = "sha256-Le+KF+80UAYHYuzJlQAuFIIxU7S8HHWiu0W8uX1rQYY=";
      name = "starfive_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/starfive/generic/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "riscv64_generic";
  feeds = import ./../../../packages/riscv64_generic.nix;
}
