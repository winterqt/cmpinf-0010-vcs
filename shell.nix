let
  sources = import ./npins;
  pkgs = import sources.nixpkgs {};
in
pkgs.mkShell {
  packages = [
    (pkgs.python3.withPackages (p: [
      p.ipykernel
      p.numpy
      p.matplotlib
      p.pandas
      p.geopandas
      p.scipy
      p.jupyterlab
    ]))
    pkgs.npins
  ];
}
