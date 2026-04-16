# 25.12.0-rc2 mpc85xx/p2020
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mpc85xx/p2020/";
  sha256sums = {
    hash = "sha256-5+bDZT8hDuGJY5+pIo39oFUQ6Q11BzQqvpkut5BKkpY=";
    name = "mpc85xx_p2020-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mpc85xx/p2020/sha256sums";
  };
  imagebuilder = {
    sha256 = "7b09603b517a799319f3aa9d6eab97e36d9d05e7e877a17c5f6552d40d2f3738";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-mpc85xx-p2020.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-8sL4ggcKZrzv6oEqRjhgWsK9bVQs531OJrwrAHM92/s=";
    name = "mpc85xx_p2020-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mpc85xx/p2020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "153da339833b6521fbeb1c56ab4e1687";
      version = "6.12.79";
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
    kmods_target = "6.12.79-1-153da339833b6521fbeb1c56ab4e1687";
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
  kmods."6.12.79-1-153da339833b6521fbeb1c56ab4e1687" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mpc85xx/p2020/kmods/6.12.79-1-153da339833b6521fbeb1c56ab4e1687/";
    sourceInfo = {
      hash = "sha256-laQrJyU4CBHyPzqYr/Ii2yAmLCfz9yOWKFFTtlKn8Ig=";
      name = "kmods-mpc85xx_p2020-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mpc85xx/p2020/kmods/6.12.79-1-153da339833b6521fbeb1c56ab4e1687/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mpc85xx/p2020/packages/";
    sourceInfo = {
      hash = "sha256-Q9WEKfQ/AN3JyYL5hQyicC7MXSYqKAQKWFe7WuCTdNE=";
      name = "mpc85xx_p2020-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mpc85xx/p2020/packages/packages.adb";
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
