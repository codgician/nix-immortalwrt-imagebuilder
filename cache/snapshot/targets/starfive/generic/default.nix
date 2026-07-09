# snapshot starfive/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/starfive/generic/";
  sha256sums = {
    hash = "sha256-/hz9pvawYeRmGrb11skW9HIoT3zG0rmuKAnwPgEz8lg=";
    name = "starfive_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/starfive/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "104c44096e6c988af5305bd9fd44d4cb42786f21c3ab48d8e660e91bff7c13f7";
    filename = "immortalwrt-imagebuilder-starfive-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-R/AZ3NGIJoy9fB2qJmHYa6Mp4mqud29CZUnEEc1DxnU=";
    name = "starfive_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/starfive/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "e0c6cbc78b7d21a576e09a48d4d6697b";
      version = "6.18.37";
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
    kmods_target = "6.18.37-1-e0c6cbc78b7d21a576e09a48d4d6697b";
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
  kmods."6.18.37-1-e0c6cbc78b7d21a576e09a48d4d6697b" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/starfive/generic/kmods/6.18.37-1-e0c6cbc78b7d21a576e09a48d4d6697b/";
    sourceInfo = {
      hash = "sha256-tniLZHaLxo0Qb9JfhBiVwp4oN849eACI+0yHGYZHnDk=";
      name = "kmods-starfive_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/starfive/generic/kmods/6.18.37-1-e0c6cbc78b7d21a576e09a48d4d6697b/packages.adb";
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
      hash = "sha256-17BGJamr0o2e5HuKWIrygD6hWwK/4mR4pPlGGyFHS/I=";
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
