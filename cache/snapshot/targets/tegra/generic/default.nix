# snapshot tegra/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/tegra/generic/";
  sha256sums = {
    hash = "sha256-o4mVHaFCsCBQt/jflAfqXrWGhZXz+fzMC7q1daatq9E=";
    name = "tegra_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/tegra/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "37806985e33fe56f171dd59a0a85708980a2d04c749df285d14603f9afb85835";
    filename = "immortalwrt-imagebuilder-tegra-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-xiT2YvfAd5KoR/O/aGB5IZinGa7qUE014G9h2U1e3cY=";
    name = "tegra_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/tegra/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_vfpv3-d16";
    linux_kernel = {
      release = "1";
      vermagic = "b3641277ab04e545c12329ee4f96165e";
      version = "6.12.94";
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
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.94-1-b3641277ab04e545c12329ee4f96165e";
    profiles = {
      compulab_trimslice = {
        device_packages = [
          "kmod-leds-gpio"
          "kmod-r8169"
          "kmod-rt2800-usb"
          "kmod-rtc-em3027"
          "kmod-usb-hid"
          "kmod-usb-storage"
          "wpad-openssl"
        ];
      };
    };
  };
  kmods."6.12.94-1-b3641277ab04e545c12329ee4f96165e" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/tegra/generic/kmods/6.12.94-1-b3641277ab04e545c12329ee4f96165e/";
    sourceInfo = {
      hash = "sha256-2qYIeFc48kQIuCjkKKnkho4udYeID6gCXrx7xpc0wao=";
      name = "kmods-tegra_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/tegra/generic/kmods/6.12.94-1-b3641277ab04e545c12329ee4f96165e/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/tegra/generic/packages/";
    sourceInfo = {
      hash = "sha256-sgprHRXUai5ahZmi4nXdobvOMMbbBc5MSkeeUeOHOsI=";
      name = "tegra_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/tegra/generic/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a9_vfpv3-d16";
  feeds = import ./../../../packages/arm_cortex-a9_vfpv3-d16.nix;
}
