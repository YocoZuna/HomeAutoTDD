add_library(Test STATIC
Src/LightControllerSpy.c
Src/TimeServiceFake.c
Src/LightScheduler.c
)



target_include_directories(Test PUBLIC
Inc
Src
${CMAKE_CURRENT_LIST_DIR})


target_link_libraries(Test PUBLIC
UnityFrameWork
Includs
)