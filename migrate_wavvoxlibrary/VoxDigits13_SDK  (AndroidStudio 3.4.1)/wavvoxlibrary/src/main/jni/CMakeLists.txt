# wavvoxlibrary .. jni / CMakeLists.txt
# jm*20190521,20190531,20190608,20190614

cmake_minimum_required(VERSION 3.4.1)


add_library(
            wavvox-decoder
  
            # sets library ...  shared vs. static 
            SHARED
            #STATIC

            wavvoxNativeApp.c
	    licenseWavvox.c
	    driverGeneration.c
	    driver.c
	    process.c
	    buildPacket.c
	    buildPacketEmbed.c
	    Decode.c
	    fifo.c
	    filters.c
	    campaignCodeText.c
	    convertTextCode.c
	    transmitSymbol.c
	    transmit.c
	    )


# Include libraries needed for wavvoxlibrary lib

target_link_libraries(
            wavvox-decoder

            android
            log
            )


# Set compiler Options in case CMake is overriding those from Gradle

target_compile_options(
            wavvox-decoder

            PRIVATE
            "-std=c99"
            "-O3"
            "-Ofast"
         #  "-Wno-error=format-security"
         #  "-mfloat-abi=softfp"
            "-mfpu=neon"
         #  "-g"
            )

