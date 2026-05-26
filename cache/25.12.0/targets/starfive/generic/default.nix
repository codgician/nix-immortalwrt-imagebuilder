# 25.12.0 starfive/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/starfive/generic/";
  sha256sums = {
    hash = "sha256-T2ktAmsyIedGq8LYPXVXrVFH2uF9y0nDjMJMaucIyM4=";
    name = "starfive_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/starfive/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "1e6814c5395eb166ec53084f0035a18e531013416b385971a7f0252a13e12839";
    filename = "immortalwrt-imagebuilder-25.12.0-starfive-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-RuVUMOW8e3kQD8F+jz3ImVRp5XJG4Q5EMqZeuN+TZdo=";
    name = "starfive_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/starfive/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "46efde58b2c978150090cd81357810bc";
      version = "6.12.87";
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
    kmods_target = "6.12.87-1-46efde58b2c978150090cd81357810bc";
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
  kmods."6.12.87-1-46efde58b2c978150090cd81357810bc" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/starfive/generic/kmods/6.12.87-1-46efde58b2c978150090cd81357810bc/";
    sourceInfo = {
      hash = "sha256-SefZOOnlh9iw79d1Y0l8sE/3aziO4DDR6oLPtMoomxc=";
      name = "kmods-starfive_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/starfive/generic/kmods/6.12.87-1-46efde58b2c978150090cd81357810bc/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/starfive/generic/packages/";
    sourceInfo = {
      hash = "sha256-pzBtkjB9ue1b6uDOr6e2N0BZD4gymRLgXKISGd9SMFA=";
      name = "starfive_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/starfive/generic/packages/packages.adb";
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
