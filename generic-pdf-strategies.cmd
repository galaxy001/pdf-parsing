@REM OFF

echo.
echo Working on 1
cudaHashcat64.exe -m 10500 -a 3 %1 -o %1.FOUND-AT-1.PASS ?b
echo.
echo Working on 2
cudaHashcat64.exe -m 10500 -a 3 %1 -o %1.FOUND-AT-2.PASS ?b?b
echo.
echo Working on 3
cudaHashcat64.exe -m 10500 -a 3 %1 -o %1.FOUND-AT-3.PASS ?a?a?a
echo.
echo Working on 4
cudaHashcat64.exe -m 10500 -a 3 %1 -o %1.FOUND-AT-4.PASS -1 ?l?d ?a?1?a?a
echo.
echo Working on 5
cudaHashcat64.exe -m 10500 -a 3 %1 -o %1.FOUND-AT-5.PASS -1 ?l?d ?a?1?1?a?a
echo.
echo Working on 6 
cudaHashcat64.exe -m 10500 -a 3 %1 -o %1.FOUND-AT-6.PASS -1 ?l?d ?a?1?1?1?a?a
echo.
echo Working on 7 
cudaHashcat64.exe -m 10500 -a 3 %1 -o %1.FOUND-AT-7.PASS -1 ?l?d ?a?1?1?1?1?a?a
echo.
echo Working on 8
cudaHashcat64.exe -m 10500 -a 3 %1 -o %1.FOUND-AT-8.PASS -1 ?l?d ?a?1?1?1?1?1?a?a
echo.
echo Working on 9 
cudaHashcat64.exe -m 10500 -a 3 %1 -o %1.FOUND-AT-9.PASS -1 ?l?d ?a?1?1?1?1?1?1?a?a
echo.
echo Working on 10
cudaHashcat64.exe -m 10500 -a 3 %1 -o %1.FOUND-AT-10.PASS -1 ?l?d ?a?1?1?1?1?1?1?1?a?a
echo.
echo Working on 11
cudaHashcat64.exe -m 10500 -a 3 %1 -o %1.FOUND-AT-11.PASS -1 ?l?d ?a?1?1?1?1?1?1?1?1?a?a
echo.
echo Working on 12
cudaHashcat64.exe -m 10500 -a 3 %1 -o %1.FOUND-AT-12.PASS -1 ?l?d ?a?1?1?1?1?1?1?1?1?1?a?a

