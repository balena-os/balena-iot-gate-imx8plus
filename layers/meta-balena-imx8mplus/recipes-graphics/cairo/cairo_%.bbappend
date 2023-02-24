# This fixes plymouth build depencency
# issue caused by no provider for egl and libgles2
PACKAGECONFIG:remove:imxgpu3d = " egl glesv2"
