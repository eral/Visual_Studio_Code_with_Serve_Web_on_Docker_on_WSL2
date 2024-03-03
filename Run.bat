@echo on
@setlocal
@pushd %~dp0

docker-compose up

@popd
@endlocal
