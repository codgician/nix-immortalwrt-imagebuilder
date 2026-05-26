# 25.12.0 mpc85xx/p2020
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mpc85xx/p2020/";
  sha256sums = {
    hash = "sha256-lMOQzUfGxhhqj1d5PhhoUjSXH/kOz0UmzRGlKX8DxFY=";
    name = "mpc85xx_p2020-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mpc85xx/p2020/sha256sums";
  };
  imagebuilder = {
    sha256 = "31f2bf88e11ca71c3bbeafaa80ab7a54af15320b79ce6d0098afe0549b9ebf41";
    filename = "immortalwrt-imagebuilder-25.12.0-mpc85xx-p2020.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-hZXsvFZ1YDtXRKLOTXI1B4K2RnvTYi1wTGKNzybp2fE=";
    name = "mpc85xx_p2020-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mpc85xx/p2020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "ffbf2540049659a0e34902f8c37d16f7";
      version = "6.12.87";
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
      "kmod-ath9k"
      "kmod-button-hotplug"
      "kmod-crypto-hw-talitos"
      "kmod-input-core"
      "kmod-input-gpio-keys"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "kmod-usb2"
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
      "swconfig"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "6.12.87-1-ffbf2540049659a0e34902f8c37d16f7";
    profiles = {
      freescale_p2020rdb = {
        device_packages = [
          "kmod-hwmon-lm90"
          "kmod-rtc-ds1307"
          "kmod-gpio-pca953x"
        ];
      };
      watchguard_xtm330 = {
        device_packages = [
          "kmod-dsa-mv88e6xxx"
          "kmod-hwmon-w83793"
          "kmod-rtc-rs5c372a"
        ];
      };
    };
  };
  kmods."6.12.87-1-ffbf2540049659a0e34902f8c37d16f7" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mpc85xx/p2020/kmods/6.12.87-1-ffbf2540049659a0e34902f8c37d16f7/";
    sourceInfo = {
      hash = "sha256-wPy+OlpfX9uUjDnsZ+RErckLl8TjX0PfPczk0/GTUDk=";
      name = "kmods-mpc85xx_p2020-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mpc85xx/p2020/kmods/6.12.87-1-ffbf2540049659a0e34902f8c37d16f7/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mpc85xx/p2020/packages/";
    sourceInfo = {
      hash = "sha256-wKP7C37yvmdibO5gjFAIIkGAI6rct+aQtqWfTE+kkDo=";
      name = "mpc85xx_p2020-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mpc85xx/p2020/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "powerpc_8548";
  feeds = import ./../../../packages/powerpc_8548.nix;
}
