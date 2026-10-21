# snapshot starfive/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/starfive/generic/";
  sha256sums = {
    hash = "sha256-+Irfe6OeG17uNSohM1Mb7arZXQX0pEQew9wGaLoYevI=";
    name = "starfive_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/starfive/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "e047ff7ac5d357afa59582380cea263109d569995caf4008f7c7574d12dde599";
    filename = "immortalwrt-imagebuilder-starfive-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-531cbwO8m18hYmsh2/jsNSDTgVCpTNOEG4KICkORRJs=";
    name = "starfive_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/starfive/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "8290ac16cf2837de2c9325c824979bd8";
      version = "6.18.55";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
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
    kmods_target = "6.18.55-1-8290ac16cf2837de2c9325c824979bd8";
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
          "kmod-leds-gpio"
        ];
      };
      "visionfive2-v1.2a" = {
        device_packages = [
          "kmod-eeprom-at24"
          "kmod-leds-gpio"
        ];
      };
      "visionfive2-v1.3b" = {
        device_packages = [
          "kmod-eeprom-at24"
          "kmod-leds-gpio"
          "uboot-envtools"
        ];
      };
    };
  };
  kmods."6.18.55-1-8290ac16cf2837de2c9325c824979bd8" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/starfive/generic/kmods/6.18.55-1-8290ac16cf2837de2c9325c824979bd8/";
    sourceInfo = {
      hash = "sha256-l5rE5ONzmVstLHiq02PkSjUFTABpwGvXgYM4sSYChrQ=";
      name = "kmods-starfive_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/starfive/generic/kmods/6.18.55-1-8290ac16cf2837de2c9325c824979bd8/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/starfive/generic/packages/";
    sourceInfo = {
      hash = "sha256-7uuWH7wnN3Cpx/zzUP+rKL/CZo9btnZ1PO1LDyoOeWY=";
      name = "starfive_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/starfive/generic/packages/packages.adb";
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
