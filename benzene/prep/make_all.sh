./prep.sh "b3lyp empiricaldispersion=gd3bj" may-cc-pVQZ b3lyp_d3bj-mayqz ../gjf off
./prep.sh "b3lyp empiricaldispersion=gd3bj" cc-pVQZ b3lyp_d3bj-qz ../gjf off
./prep.sh "b3lyp empiricaldispersion=gd3bj" jun-cc-pVTZ b3lyp_d3bj-juntz ../gjf off
./prep.sh "b3lyp empiricaldispersion=gd3bj" cc-pVTZ b3lyp_d3bj-tz ../gjf off
./prep.sh "b3lyp empiricaldispersion=gd3bj" jul-cc-pVDZ b3lyp_d3bj-juldz ../gjf off
./prep.sh "b3lyp empiricaldispersion=gd3bj" cc-pVDZ b3lyp_d3bj-dz ../gjf off

./prep.sh "hf" 6-31g* hf-631gd ../gjf off
./prep.sh "hf" 6-31g* hf-631gd-cp ../gjf on

./prep.sh "mp2" 6-31g* mp2-631gd ../gjf off
./prep.sh "mp2" 6-31g* mp2-631gd-cp ../gjf on

./prep.sh "b3lyp" 6-31g* b3lyp-631gd ../gjf off
./prep.sh "b3lyp" 6-31g* b3lyp-631gd-cp ../gjf on

./prep.sh "b3lyp empiricaldispersion=gd3bj" 6-31g* b3lyp_d3bj-631gd ../gjf off
./prep.sh "b3lyp empiricaldispersion=gd3bj" 6-31g* b3lyp_d3bj-631gd-cp ../gjf on

./prep.sh "m062x" may-cc-pVQZ m062x-mayqz ../gjf2 off
./prep.sh "m062x" 6-31g* m062x-631gd ../gjf off
./prep.sh "m062x" 6-31g* m062x-631gd-cp ../gjf on

./prep.sh "pbe1pbe empiricaldispersion=gd3bj" may-cc-pVQZ pbe0_d3bj-mayqz ../gjf2 off
./prep.sh "pbe1pbe empiricaldispersion=gd3bj" 6-31g* pbe0_d3bj-631gd ../gjf2 off

