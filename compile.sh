gfortran -O -I. anc_comm.f -o anc_comm
gfortran -O -I. contribution.f -o contribution
gfortran -O -I. etr.f    -o etr
gfortran -O -I. grain.f -O -o grain
gfortran -O -I. intgen.f -o intgen
gfortran -O -I. intgend.f -o intgend
gfortran -O -I. meuw.f   -o meuw
gfortran -O -I. ngen.f   -o ngen
gfortran -O -I. par.f    -o par
gfortran -O -I. par2.f   -o par2
gfortran -O -I. par3.f   -o par3
gfortran -O -I. parente.f -o parente
gfortran -O -I. ped_util.f -o ped_util
gfortran -O -I. prob_orig.f -o prob_orig
gfortran -O -I. segreg.f -o segreg
gfortran -O -I. vanrad.f -o vanrad
gfortran -O -I. verif_ped.f -o verif_ped

find * -type f -perm /a+x -exec cp -v {} /build/pedig_web/bin_linux/ \;