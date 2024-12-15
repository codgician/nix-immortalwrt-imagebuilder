{ pkgs ? import <nixpkgs> {}
}:

let
  inherit (pkgs) lib;
  inherit (import ./releases.nix { inherit pkgs; }) releases;

  list = release:
    let
      inherit (import ./profiles.nix {
        inherit pkgs release;
      }) allProfiles;
    in pkgs.writeText "immortalwrt-${release}-profiles-list.md" ''
      # ImmortalWrt ${release} profiles

      ${lib.concatMapStrings (target:
        lib.concatMapStrings (variant: ''
          ## ${target}/${variant}

          ${lib.concatMapStrings (profile: ''
            - ${profile}
          '') (builtins.attrNames allProfiles.${target}.${variant}.profiles)}

        '') (builtins.attrNames allProfiles.${target})
      ) (builtins.attrNames allProfiles)}
    '';

in
pkgs.runCommand "immortalwrt-profiles" {
  passthru = lib.listToAttrs (map (release: {
    name = builtins.replaceStrings [ "." ] [ "_" ] release;
    value = list release;
  }) releases);
} ''
  mkdir $out
  ${lib.concatMapStrings (release: ''
    ln -s ${list release} $out/${release}.md
  '') releases}
''
