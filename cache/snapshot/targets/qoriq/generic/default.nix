# snapshot qoriq/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/qoriq/generic/";
  sha256sums = {
    hash = "sha256-ffUuhpmgUTnEjJSS4l9etKJeHdzoZ4Hdu5DmaCjo58c=";
    name = "qoriq_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/qoriq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "e3f8119cef33a515b0bedbddb280611ea330f1196800f6b0e730131e684fad5d";
    filename = "immortalwrt-imagebuilder-qoriq-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-sVOZFT3XTPL0u8TQVVjp8te0mGskOd24sxtgkrFfGkU=";
    name = "qoriq_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/qoriq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc64_e5500";
    linux_kernel = {
      release = "1";
      vermagic = "0fabb1d5a8458597d0189c150b0e603c";
      version = "6.18.39";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mkf2fs"
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
    ];
    kmods_target = "6.18.39-1-0fabb1d5a8458597d0189c150b0e603c";
    profiles = {
      fsl_T4240RDB = {
        device_packages = [
          "kmod-eeprom-at24"
          "kmod-gpio-button-hotplug"
          "kmod-hwmon-w83793"
          "kmod-leds-gpio"
          "kmod-ptp-qoriq"
          "kmod-rtc-ds1374"
        ];
      };
      watchguard_firebox-m300 = {
        device_packages = [
          "kmod-gpio-button-hotplug"
          "kmod-hwmon-w83793"
          "kmod-leds-gpio"
          "kmod-ptp-qoriq"
          "kmod-rtc-rs5c372a"
          "kmod-tpm-i2c-atmel"
          "kmod-dsa-mv88e6xxx"
        ];
      };
    };
  };
  kmods."6.18.39-1-0fabb1d5a8458597d0189c150b0e603c" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/qoriq/generic/kmods/6.18.39-1-0fabb1d5a8458597d0189c150b0e603c/";
    sourceInfo = {
      hash = "sha256-mkKVMI4hfQ5CmVxDl5baQL2EcVj70yWMJCwmjNTX5BE=";
      name = "kmods-qoriq_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/qoriq/generic/kmods/6.18.39-1-0fabb1d5a8458597d0189c150b0e603c/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/qoriq/generic/packages/";
    sourceInfo = {
      hash = "sha256-gwVi/yU+gndsXbJ9EWich6n5sY1YYgtyP7omxv6ksm4=";
      name = "qoriq_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/qoriq/generic/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "powerpc64_e5500";
  feeds = import ./../../../packages/powerpc64_e5500.nix;
}
