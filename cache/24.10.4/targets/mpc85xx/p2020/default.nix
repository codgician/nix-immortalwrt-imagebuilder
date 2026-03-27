# 24.10.4 mpc85xx/p2020
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mpc85xx/p2020/";
  sha256sums = {
    hash = "sha256-MoeaLoY2i78CB/X0LqhF+KihX+LPlpnpes0b8Tm5Fxs=";
    name = "mpc85xx_p2020-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mpc85xx/p2020/sha256sums";
  };
  imagebuilder = {
    sha256 = "1bac9db622a7fc3f3eaaeed2f1d21e88fc505e69a82c57b2125f5d28d48bc7cf";
    filename = "immortalwrt-imagebuilder-24.10.4-mpc85xx-p2020.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-98ysbInF65tD0g86D+unlUTs3kMTSlOjHuPGhB85OAk=";
    name = "mpc85xx_p2020-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mpc85xx/p2020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "5883f85921aa2219fcea038da1293dc7";
      version = "6.6.110";
    };
    default_packages = [
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
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-usb2"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
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
    kmods_target = "6.6.110-1-5883f85921aa2219fcea038da1293dc7";
    profiles = {
      freescale_p2020rdb = {
        device_packages = [
          "kmod-hwmon-lm90"
          "kmod-rtc-ds1307"
          "kmod-gpio-pca953x"
          "kmod-eeprom-at24"
        ];
      };
    };
  };
  kmods."6.6.110-1-5883f85921aa2219fcea038da1293dc7" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mpc85xx/p2020/kmods/6.6.110-1-5883f85921aa2219fcea038da1293dc7/";
    sourceInfo = {
      hash = "sha256-jW87Pg1oLs2bV1gejinXS0/6CXb3yDxZJDPbHgrlyGs=";
      name = "kmods-mpc85xx_p2020-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mpc85xx/p2020/kmods/6.6.110-1-5883f85921aa2219fcea038da1293dc7/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mpc85xx/p2020/packages/";
    sourceInfo = {
      hash = "sha256-c1PmWgS6A7pi4BwW5x1IPUSOJip/2Ur86HJhUPODawg=";
      name = "mpc85xx_p2020-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mpc85xx/p2020/packages/Packages";
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
