# snapshot starfive/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/starfive/generic/";
  sha256sums = {
    hash = "sha256-5KfFh6qK2xKM2/nr7UQDPvj1Klon7ur+FNs/hwJnaak=";
    name = "starfive_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/starfive/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "08d455f907f20a917c35935776c5003570b037b2622ddc00d0c4012eae024451";
    filename = "immortalwrt-imagebuilder-starfive-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-i0J7Ht3qw63OTsLPtFpfLB+XgR8WpiLzjw32L/MiAwA=";
    name = "starfive_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/starfive/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "fea957ebe231a094bb6c633008f7a73a";
      version = "6.18.52";
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
    kmods_target = "6.18.52-1-fea957ebe231a094bb6c633008f7a73a";
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
  kmods."6.18.52-1-fea957ebe231a094bb6c633008f7a73a" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/starfive/generic/kmods/6.18.52-1-fea957ebe231a094bb6c633008f7a73a/";
    sourceInfo = {
      hash = "sha256-PamE+WCc7Qb+JlE0/xbSPJTHsq3dYwSe9HBw3iYhI9I=";
      name = "kmods-starfive_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/starfive/generic/kmods/6.18.52-1-fea957ebe231a094bb6c633008f7a73a/packages.adb";
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
      hash = "sha256-Pt7HHCSKgWAqBcTfCQSf3k50Bi7Vk3drDz6RBNFyTus=";
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
