@echo Build BOOST
@set BOOST_DIR=%ExternalDir%boost\src\
@cd %BOOST_DIR%
@call %BOOST_DIR%bootstrap.bat >%LOGS_DIR%\buildBoost.log

@rem 生成头文件
@rem call %BOOST_DIR%b2 headers >>%LOGS_DIR%\buildBoost.log

@rem 编译
@rem set BUILD_CONF=install --prefix=%BULID_DIR%boost --includedir=%LIB3rd%  --libdir=%LIB3rd%Lib_vc%VS_VERSION% toolset=msvc-%VS_VERSION%.0 runtime-link=static
@rem call %BOOST_DIR%b2  %BUILD_CONF%>>%LOGS_DIR%\buildBoost.log

@set BUILD_CONF=install --prefix=%BULID_DIR%boost --includedir=%LIB3rd%  --libdir=%LIB3rd%Lib_vc%VS_VERSION% toolset=msvc-%VS_VERSION%.0
@call %BOOST_DIR%b2  %BUILD_CONF%>>%LOGS_DIR%\buildBoost.log