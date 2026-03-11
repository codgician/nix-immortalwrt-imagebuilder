# snapshot sifiveu/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sifiveu/generic/";
  sha256sums = {
    hash = "sha256-RdKWP/IQQ5KAMcbNUNml0SfIAQIVm1xvV59ij6bJfDc=";
    name = "sifiveu_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/sifiveu/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "1b719cf0b081ad643b2759158d2fa8ea2dc4551d61e95c8f6ee07cc3a3eb39ee";
    filename = "immortalwrt-imagebuilder-sifiveu-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-+hW64/hb1XnkdvnXaxnQNsVep4CJ7yVfQLnTBrNYyZs=";
    name = "sifiveu_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/sifiveu/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "a66afef4e07e119b628cb8ab301af453";
      version = "6.12.74";
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
    kmods_target = "6.12.74-1-a66afef4e07e119b628cb8ab301af453";
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
  kmods."6.12.74-1-a66afef4e07e119b628cb8ab301af453" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sifiveu/generic/kmods/6.12.74-1-a66afef4e07e119b628cb8ab301af453/";
    sourceInfo = {
      hash = "sha256-uNF5dSHitSIS0V/2VD+W1EMhLHlv7KAyc6HpI9zLAW8=";
      name = "kmods-sifiveu_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/sifiveu/generic/kmods/6.12.74-1-a66afef4e07e119b628cb8ab301af453/packages.adb";
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
      hash = "sha256-CzI5wg2RO6ewVfmKzkJW40zQ4MumAhVr7JaaPzE47nA=";
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
