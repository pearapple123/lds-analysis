with import <nixpkgs> {};
{
  myProject = stdenv.mkDerivation {
    name = "lds";
    src = if lib.inNixShell then null else nix;

    buildInputs = with rPackages; [
      R
      dplyr
      GGally
    ] ++ [ pkgs.evince ];
  };
}
