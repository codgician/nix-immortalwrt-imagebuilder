# 25.12.2 sifiveu/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/sifiveu/generic/";
  sha256sums = {
    hash = "sha256-us17XiNZ3y8QeG8xsdKHMhVrvF2z3nWz6RK6p3hdNWs=";
    name = "sifiveu_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/sifiveu/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "5531f7fbfa0a31b2445fd36884488f6924c035d456e12fc84707cbbb9a760a14";
    filename = "immortalwrt-imagebuilder-25.12.2-sifiveu-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-5L7l9ovv4GezqrKFE+Unz+ILdtJkvHadiEZ3SFnltUA=";
    name = "sifiveu_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/sifiveu/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "3c66a94b2435f0bf0d49b1dc194d0afa";
      version = "6.12.103";
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
    kmods_target = "6.12.103-1-3c66a94b2435f0bf0d49b1dc194d0afa";
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
  kmods."6.12.103-1-3c66a94b2435f0bf0d49b1dc194d0afa" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/sifiveu/generic/kmods/6.12.103-1-3c66a94b2435f0bf0d49b1dc194d0afa/";
    sourceInfo = {
      hash = "sha256-msIrMhaC9IEDaiAsO1yEM2ZbY7qFydlWN6YtrOiChtg=";
      name = "kmods-sifiveu_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/sifiveu/generic/kmods/6.12.103-1-3c66a94b2435f0bf0d49b1dc194d0afa/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/sifiveu/generic/packages/";
    sourceInfo = {
      hash = "sha256-Or4v5rI8Wv4Z0tjK2SjGomJP5RFWwWno1sV9FLD/x2A=";
      name = "sifiveu_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/sifiveu/generic/packages/packages.adb";
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
