include .env

CFLAGS = -std=c++17 -I. -I$(VULKAN_SDK_PATH)/include
LDFAGG = -L$(VULKAN_SDK_PATH)/lib `pkg-config --static --libs glfw3` -lvulkan


a.out *.cpp *.hpp
	g++ $(CFLAGS) -o a.out *.cpp $(LDFAGS)

