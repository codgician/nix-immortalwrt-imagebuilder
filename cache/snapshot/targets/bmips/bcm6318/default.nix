# snapshot bmips/bcm6318
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6318/";
  sha256sums = {
    hash = "sha256-03mhdx54Mrkbx45szntcFQOwh24wpC7GoC0rfsUF9P0=";
    name = "bmips_bcm6318-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6318/sha256sums";
  };
  imagebuilder = {
    sha256 = "301834aa90a51677b4324f8d0e016b64a1cb8e59fa888353793af810b0748ae6";
    filename = "immortalwrt-imagebuilder-bmips-bcm6318.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-s17R6CZZ46wh5wC4dww30H60/3adur7xOn4MEpwtFks=";
    name = "bmips_bcm6318-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6318/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "e64aeb384946c497aef3a06fa9c1c7ee";
      version = "6.12.94";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
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
    kmods_target = "6.12.94-1-e64aeb384946c497aef3a06fa9c1c7ee";
    profiles = {
      comtrend_ar-5315u = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43217-sprom"
          "kmod-leds-bcm6328"
        ];
      };
      tp-link_td-w8968-v3 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43217-sprom"
          "kmod-leds-bcm6328"
        ];
      };
    };
  };
  kmods."6.12.94-1-e64aeb384946c497aef3a06fa9c1c7ee" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6318/kmods/6.12.94-1-e64aeb384946c497aef3a06fa9c1c7ee/";
    sourceInfo = {
      hash = "sha256-zhWsSU4DXeOMSsrmqQV8Ota2iloBmDt266HPmPB81i4=";
      name = "kmods-bmips_bcm6318-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6318/kmods/6.12.94-1-e64aeb384946c497aef3a06fa9c1c7ee/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6318/packages/";
    sourceInfo = {
      hash = "sha256-D7kRqEWsT3GyuDvv3nsUHQUWuxVolUo4KKFJ0R6qtBs=";
      name = "bmips_bcm6318-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6318/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_mips32";
  feeds = import ./../../../packages/mips_mips32.nix;
}
