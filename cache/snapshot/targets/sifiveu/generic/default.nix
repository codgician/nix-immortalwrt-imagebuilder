# snapshot sifiveu/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sifiveu/generic/";
  sha256sums = {
    hash = "sha256-ItHbfqLZTZVYaK8xnJ/rD8Uk6s4aY8ZR44Lg8wKn9EM=";
    name = "sifiveu_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/sifiveu/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "dbb624d33201c19d1146b13e7c9520ec444c4eb612c17e1ab96f24ac06ba3ca2";
    filename = "immortalwrt-imagebuilder-sifiveu-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-CM4vqxKNbjSigUmQh99kE8/97uQDZJqqInkWiUc9y+4=";
    name = "sifiveu_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/sifiveu/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "6fb8f657e7c2db519eebcd4e56896d44";
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
    kmods_target = "6.18.37-1-6fb8f657e7c2db519eebcd4e56896d44";
    profiles = {
      sifive_unleashed = {
        device_packages = [ ];
      };
      sifive_unmatched = {
        device_packages = [
          "kmod-eeprom-at24"
          "kmod-hwmon-lm90"
        ];
      };
    };
  };
  kmods."6.18.37-1-6fb8f657e7c2db519eebcd4e56896d44" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sifiveu/generic/kmods/6.18.37-1-6fb8f657e7c2db519eebcd4e56896d44/";
    sourceInfo = {
      hash = "sha256-0nfsS4T40pMj3qebeDU4N6zzUYYkN2p2rOI7Nr0+CyM=";
      name = "kmods-sifiveu_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/sifiveu/generic/kmods/6.18.37-1-6fb8f657e7c2db519eebcd4e56896d44/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sifiveu/generic/packages/";
    sourceInfo = {
      hash = "sha256-43+p0gS7Bd9NvP/6v98K0g0lXrafG3tSgg3mqB0Nhtw=";
      name = "sifiveu_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/sifiveu/generic/packages/packages.adb";
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
