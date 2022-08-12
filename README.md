# Dirty Region Management Examples

This PR outlines an example of a Vulkan-based Flutter embedder that supports dirty region management. The goal of this repository is to provide guidance to anyone who wishes to add dirty region management to their Vulkan embedder. This implementation is dependent on the changes proposed in this prototype PR: https://github.com/flutter/engine/pull/35148. 

For additional resources, see:
- https://github.com/flutter/engine/pull/35057 (GLFW example of an OpenGL-based embedder with dirty region management).
- https://github.com/flutter/engine/pull/35022 (implementation of dirty region management in the Embedder API with OpenGL support).
- https://github.com/flutter/engine/pull/35193 (implementation of dirty region management in the Embedder API with Metal support).
