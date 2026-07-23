# snapshot sifiveu/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sifiveu/generic/";
  sha256sums = {
    hash = "sha256-rUV61zP9PgGVzBff6FNvJj7tqkrL3EP+/7ugdJiDo2c=";
    name = "sifiveu_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/sifiveu/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "4f222a8dddb04f8fdb249d47f62740e0c28a65ff0601aae6809e9f033194c36b";
    filename = "immortalwrt-imagebuilder-sifiveu-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-KtqGDI7wfVTJEEo7WnT8Kw1IM0jRWFt9QbbtsioKZFM=";
    name = "sifiveu_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/sifiveu/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "54634d3f0dd08ea13e919ac72acf3de1";
      version = "6.18.39";
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
    kmods_target = "6.18.39-1-54634d3f0dd08ea13e919ac72acf3de1";
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
  kmods."6.18.39-1-54634d3f0dd08ea13e919ac72acf3de1" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sifiveu/generic/kmods/6.18.39-1-54634d3f0dd08ea13e919ac72acf3de1/";
    sourceInfo = {
      hash = "sha256-rF9EJhyS3EeQhov2Cq3Av1oGJ2WmygAU+hOJqbMWHS0=";
      name = "kmods-sifiveu_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/sifiveu/generic/kmods/6.18.39-1-54634d3f0dd08ea13e919ac72acf3de1/packages.adb";
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
      hash = "sha256-b6P78BAkX3d5zKNNG2YKN78pXPTeb9iOjs41khLgCvw=";
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
