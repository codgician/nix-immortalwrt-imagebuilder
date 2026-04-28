# 24.10.6 mpc85xx/p1020
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/mpc85xx/p1020/";
  sha256sums = {
    hash = "sha256-4O5QZM+EzGEJhNuc78nVWGo92U1UoPIbtw9uQ55ugiQ=";
    name = "mpc85xx_p1020-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/mpc85xx/p1020/sha256sums";
  };
  imagebuilder = {
    sha256 = "be81d7e7bb75be23dcc09209406d6a81ccf8fc17ed5944840368c94de33bc4dd";
    filename = "immortalwrt-imagebuilder-24.10.6-mpc85xx-p1020.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-gbLf62g5LAACIBtL3Os/tkkCEiny7Kl91Uq4A1j3FyU=";
    name = "mpc85xx_p1020-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/mpc85xx/p1020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "9a33a955849b167558eb31f904e5260a";
      version = "6.6.133";
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
    kmods_target = "6.6.133-1-9a33a955849b167558eb31f904e5260a";
    profiles = {
      aerohive_hiveap-330 = {
        device_packages = [
          "kmod-tpm-i2c-atmel"
          "kmod-hwmon-lm70"
        ];
      };
      enterasys_ws-ap3710i = {
        device_packages = [ ];
      };
      extreme-networks_ws-ap3825i = {
        device_packages = [
          "kmod-ath10k-ct"
          "ath10k-firmware-qca988x-ct"
        ];
      };
      hpe_msm460 = {
        device_packages = [ ];
      };
      ocedo_panda = {
        device_packages = [ "kmod-rtc-ds1307" ];
      };
    };
  };
  kmods."6.6.133-1-9a33a955849b167558eb31f904e5260a" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/mpc85xx/p1020/kmods/6.6.133-1-9a33a955849b167558eb31f904e5260a/";
    sourceInfo = {
      hash = "sha256-wI263lFMuyTMVEEQ7giuKesT34FiH5qohOUMjZUfruA=";
      name = "kmods-mpc85xx_p1020-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/mpc85xx/p1020/kmods/6.6.133-1-9a33a955849b167558eb31f904e5260a/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/mpc85xx/p1020/packages/";
    sourceInfo = {
      hash = "sha256-JalpA4LgYRRDvpNU0VBLtzZRZ/KSHMmvU2Vvg9q99lc=";
      name = "mpc85xx_p1020-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/mpc85xx/p1020/packages/Packages";
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
