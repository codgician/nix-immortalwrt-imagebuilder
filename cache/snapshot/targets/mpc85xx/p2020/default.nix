# snapshot mpc85xx/p2020
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p2020/";
  sha256sums = {
    hash = "sha256-vBF8aMIyHvrYGf+hlGDjKlg/0ynoLUZf2EHy2AGZUhE=";
    name = "mpc85xx_p2020-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p2020/sha256sums";
  };
  imagebuilder = {
    sha256 = "e365fe289954d904b353c8d66ce1d249a2eacae26230e20ad2d0118ad68deb42";
    filename = "immortalwrt-imagebuilder-mpc85xx-p2020.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-951Hw/Thcjy98ldHL9CTA3kYerR42muj1N8NWvawAu4=";
    name = "mpc85xx_p2020-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p2020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "43425b54c76c0a53f096627d1c2d1e65";
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
      "kmod-ath9k"
      "kmod-button-hotplug"
      "kmod-crypto-hw-talitos"
      "kmod-input-core"
      "kmod-input-gpio-keys"
      "kmod-leds-gpio"
      "kmod-nft-offload"
      "kmod-usb2"
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
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "6.12.77-1-43425b54c76c0a53f096627d1c2d1e65";
    profiles = {
      freescale_p2020rdb = {
        device_packages = [
          "kmod-dsa-vsc73xx-platform"
          "kmod-gpio-pca953x"
          "kmod-hwmon-lm90"
          "kmod-rtc-ds1307"
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
  kmods."6.12.77-1-43425b54c76c0a53f096627d1c2d1e65" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p2020/kmods/6.12.77-1-43425b54c76c0a53f096627d1c2d1e65/";
    sourceInfo = {
      hash = "sha256-HfLvKLwIMFE8aFTUb+SmLt1AE9p1Do4VwylHHsDYWSk=";
      name = "kmods-mpc85xx_p2020-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p2020/kmods/6.12.77-1-43425b54c76c0a53f096627d1c2d1e65/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p2020/packages/";
    sourceInfo = {
      hash = "sha256-FRVr+CEs8LxTjUfyxPFSmocD1wsVy5NO5uPgulHF2xo=";
      name = "mpc85xx_p2020-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p2020/packages/packages.adb";
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
