# 25.12.1 sifiveu/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/sifiveu/generic/";
  sha256sums = {
    hash = "sha256-/ALt2JPGzfl7SViPn4rB8vCvAL9Eqt95jXr6yjfGoHk=";
    name = "sifiveu_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/sifiveu/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "157ba939fe70744862354c3b7c64cab499768e946ce259efd65e4c7da7cb5f11";
    filename = "immortalwrt-imagebuilder-25.12.1-sifiveu-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Pq5aoKzo46UUWUB2Thw8iywX5QZm87zKjUtAVaIwLUc=";
    name = "sifiveu_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/sifiveu/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "3c66a94b2435f0bf0d49b1dc194d0afa";
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
    kmods_target = "6.12.94-1-3c66a94b2435f0bf0d49b1dc194d0afa";
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
  kmods."6.12.94-1-3c66a94b2435f0bf0d49b1dc194d0afa" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/sifiveu/generic/kmods/6.12.94-1-3c66a94b2435f0bf0d49b1dc194d0afa/";
    sourceInfo = {
      hash = "sha256-GlAq1GZYYbH9AWquxoIg7v8+j/tPXcxBhvK9fiswngE=";
      name = "kmods-sifiveu_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/sifiveu/generic/kmods/6.12.94-1-3c66a94b2435f0bf0d49b1dc194d0afa/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/sifiveu/generic/packages/";
    sourceInfo = {
      hash = "sha256-RWg6TNN2On3NKZBpRHYR/HRleCclaLSz+ShxlmGRHaU=";
      name = "sifiveu_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/sifiveu/generic/packages/packages.adb";
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
