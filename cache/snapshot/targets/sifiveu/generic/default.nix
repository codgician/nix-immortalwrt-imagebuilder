# snapshot sifiveu/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sifiveu/generic/";
  sha256sums = {
    hash = "sha256-JY1KErOZidHvz2mlGgIM8R72D6zlhjj6R7TrFByW6Fk=";
    name = "sifiveu_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/sifiveu/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "1944f909d9d182f7e68bc139dea3d03f20ec76074ea5b0f948ac54250236415e";
    filename = "immortalwrt-imagebuilder-sifiveu-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-trGMTxN918mVMtd0guEiRSHDLU7DWbc+XZGgu0IWig8=";
    name = "sifiveu_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/sifiveu/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "555f8c273b1b8ca30f75d0cd7d654ccc";
      version = "6.18.44";
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
    kmods_target = "6.18.44-1-555f8c273b1b8ca30f75d0cd7d654ccc";
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
  kmods."6.18.44-1-555f8c273b1b8ca30f75d0cd7d654ccc" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sifiveu/generic/kmods/6.18.44-1-555f8c273b1b8ca30f75d0cd7d654ccc/";
    sourceInfo = {
      hash = "sha256-y4PJSkUx9Z5Kd0j/0kc/HrSR+M2MXNNqfHC0H6Ju3Ik=";
      name = "kmods-sifiveu_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/sifiveu/generic/kmods/6.18.44-1-555f8c273b1b8ca30f75d0cd7d654ccc/packages.adb";
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
      hash = "sha256-ENr78+MpE0BHC6cFKy1jiRl+QVwRGwu0F8lBc4TXe1Q=";
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
