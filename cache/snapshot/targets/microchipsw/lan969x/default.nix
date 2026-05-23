# snapshot microchipsw/lan969x
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/microchipsw/lan969x/";
  sha256sums = {
    hash = "sha256-vP26hIzhPvptHoGQLs7xgFvi5guMbssalgvLXuybfpg=";
    name = "microchipsw_lan969x-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/microchipsw/lan969x/sha256sums";
  };
  imagebuilder = {
    sha256 = "198b06832c0468016ef0902362050f3da9622ba5c0ea7967bd4930a82b7266f5";
    filename = "immortalwrt-imagebuilder-microchipsw-lan969x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-6EC42z9JeBdZm+DrhkRoYuWDXLZhAullKYLoB9BrRvI=";
    name = "microchipsw_lan969x-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/microchipsw/lan969x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "ff566f6ea46a5a9735bff7ae5ee3ebd7";
      version = "6.18.31";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dcb"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "ethtool-full"
      "f2fs-tools"
      "firewall4"
      "fstools"
      "ip-bridge"
      "kmod-fs-ext4"
      "kmod-fs-f2fs"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nft-offload"
      "kmod-phy-micrel"
      "kmod-sfp"
      "kmod-sparx5-switch"
      "kmod-usb-dwc3"
      "kmod-usb3"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "losetup"
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
    kmods_target = "6.18.31-1-ff566f6ea46a5a9735bff7ae5ee3ebd7";
    profiles = {
      microchip_ev23x71a = {
        device_packages = [ "kmod-i2c-mux-gpio" ];
      };
      novarq_tactical-1000 = {
        device_packages = [
          "kmod-i2c-mux-gpio"
          "kmod-gpio-pwm"
          "kmod-hwmon-pwmfan"
          "kmod-hwmon-gpiofan"
          "kmod-rtc-ds1307"
          "kmod-hwmon-lm75"
        ];
      };
    };
  };
  kmods."6.18.31-1-ff566f6ea46a5a9735bff7ae5ee3ebd7" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/microchipsw/lan969x/kmods/6.18.31-1-ff566f6ea46a5a9735bff7ae5ee3ebd7/";
    sourceInfo = {
      hash = "sha256-8nKUgRNxNROmBHbLOtsJCin3znpVPxJhDOA5jogx7Qw=";
      name = "kmods-microchipsw_lan969x-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/microchipsw/lan969x/kmods/6.18.31-1-ff566f6ea46a5a9735bff7ae5ee3ebd7/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/microchipsw/lan969x/packages/";
    sourceInfo = {
      hash = "sha256-t6DY4i5U+2TRO/QYWzVUrV60X2ATaIPi7LaWStRJKeM=";
      name = "microchipsw_lan969x-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/microchipsw/lan969x/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_cortex-a53";
  feeds = import ./../../../packages/aarch64_cortex-a53.nix;
}
