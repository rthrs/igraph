cd igraph-*-msvc
:: used so that the python does not try to setup again
set DISTUTILS_USE_SDK=1 
:: use the right environment per architecture
devenv /upgrade igraph.vcproj
MSBuild igraph.vcxproj /p:Configuration=Release /p:Platform=x64
cd ..
cd interfaces\python
python setup.py bdist_wininst
::exit