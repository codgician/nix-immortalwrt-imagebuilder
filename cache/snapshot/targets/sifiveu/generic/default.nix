# snapshot sifiveu/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sifiveu/generic/";
  sha256sums = {
    hash = "sha256-2ujGEL0Ro3l3aHvdtSWj4vdo9KWmJRZ2z+fZPsC+USA=";
    name = "sifiveu_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/sifiveu/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "13481d88b8470cfd786b68c140448788070a1198f5ccd0894aa8f5b7e756c350";
    filename = "immortalwrt-imagebuilder-sifiveu-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-zHhX8VBCLR0Qd4F57eef+Gc+gx8GIuZZyCmP9bg7Zv0=";
    name = "sifiveu_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/sifiveu/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "15135f922f80d6e12f751a36a3f0bb98";
      version = "6.12.77";
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
    kmods_target = "6.12.77-1-15135f922f80d6e12f751a36a3f0bb98";
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
  kmods."6.12.77-1-15135f922f80d6e12f751a36a3f0bb98" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sifiveu/generic/kmods/6.12.77-1-15135f922f80d6e12f751a36a3f0bb98/";
    sourceInfo = {
      hash = "sha256-UbJKC/Lu/aEdUAGysYgRGvf0ir5RwmNXdNjQdRt975g=";
      name = "kmods-sifiveu_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/sifiveu/generic/kmods/6.12.77-1-15135f922f80d6e12f751a36a3f0bb98/packages.adb";
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
      hash = "sha256-P01vRVYY4tQX4VdhNyh/fuldYdjIuaFWo+Hbcl+Tz7Q=";
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
