# snapshot realtek/rtl839x
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl839x/";
  sha256sums = {
    hash = "sha256-RB3XD5kcPqCECeS+5hvxUg7tYuqFAPKEQN5ZWW9jtgg=";
    name = "realtek_rtl839x-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl839x/sha256sums";
  };
  imagebuilder = {
    sha256 = "09802a963bd9cb1671e933f0b2fdf33dada29dcfd24575003fb26286dd5aecc1";
    filename = "immortalwrt-imagebuilder-realtek-rtl839x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-J1+DDMR0Tbmj5nVArRdlfEuy/2uMbGObE+5P5mcpC9Q=";
    name = "realtek_rtl839x-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl839x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "7ddd9c54d3d8777c68a61c640d5a2f76";
      version = "6.18.55";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mtd"
      "netifd"
      "odhcp6c"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.18.55-1-7ddd9c54d3d8777c68a61c640d5a2f76";
    profiles = {
      d-link_dgs-1210-52 = {
        device_packages = [ ];
      };
      edgecore_ecs2100-52t = {
        device_packages = [
          "kmod-eeprom-at24"
          "kmod-hwmon-adt7470"
          "kmod-hwmon-lm75"
          "kmod-hwmon-pwmfan"
          "kmod-thermal"
        ];
      };
      edgecore_ecs4100-12ph = {
        device_packages = [
          "kmod-eeprom-at24"
          "kmod-hwmon-adt7470"
          "kmod-hwmon-lm75"
          "kmod-thermal"
          "realtek-poe"
        ];
      };
      hpe_1920-48g = {
        device_packages = [ ];
      };
      hpe_1920-48g-poe = {
        device_packages = [
          "realtek-poe"
          "kmod-hwmon-gpiofan"
        ];
      };
      netgear_gs750e = {
        device_packages = [ ];
      };
      panasonic_m48eg-pn28480k = {
        device_packages = [
          "kmod-hwmon-gpiofan"
          "kmod-hwmon-lm75"
          "kmod-i2c-mux-pca954x"
          "kmod-thermal"
        ];
      };
      tplink_sg2452p-v4 = {
        device_packages = [
          "kmod-hwmon-gpiofan"
          "kmod-hwmon-tps23861"
        ];
      };
      zyxel_gs1900-48-a1 = {
        device_packages = [ ];
      };
      zyxel_gs1900-48hp-a1 = {
        device_packages = [ "realtek-poe" ];
      };
      zyxel_gs1920-24-v1 = {
        device_packages = [ "kmod-hwmon-lm85" ];
      };
      zyxel_gs1920-24hp-v1 = {
        device_packages = [
          "kmod-hwmon-lm85"
          "kmod-pse-realtek-mcu-i2c"
        ];
      };
      zyxel_gs1920-24hp-v2 = {
        device_packages = [
          "kmod-hwmon-lm85"
          "kmod-pse-realtek-mcu-i2c"
        ];
      };
    };
  };
  kmods."6.18.55-1-7ddd9c54d3d8777c68a61c640d5a2f76" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl839x/kmods/6.18.55-1-7ddd9c54d3d8777c68a61c640d5a2f76/";
    sourceInfo = {
      hash = "sha256-6UvtEIN7eNf+P4K8gY7ySB4guLscPp8WXJy3CttoIeM=";
      name = "kmods-realtek_rtl839x-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl839x/kmods/6.18.55-1-7ddd9c54d3d8777c68a61c640d5a2f76/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl839x/packages/";
    sourceInfo = {
      hash = "sha256-46xuNkdWX251PQ+CuG2LzWy+XrvewojJVhl7peFWSDk=";
      name = "realtek_rtl839x-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl839x/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_24kc";
  feeds = import ./../../../packages/mips_24kc.nix;
}
