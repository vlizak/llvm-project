// RUN: not llvm-mc -triple=aarch64 -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s

fcvtzu    z0.h, p0/m, z0.s
// CHECK: [[@LINE-1]]:{{[0-9]+}}: error: invalid element width
// CHECK-NEXT: fcvtzu    z0.h, p0/m, z0.s
// CHECK-NOT: [[@LINE-1]]:{{[0-9]+}}:

fcvtzu    z0.h, p0/m, z0.d
// CHECK: [[@LINE-1]]:{{[0-9]+}}: error: invalid element width
// CHECK-NEXT: fcvtzu    z0.h, p0/m, z0.d
// CHECK-NOT: [[@LINE-1]]:{{[0-9]+}}:


// --------------------------------------------------------------------------//
// error: restricted predicate has range [0, 7].

fcvtzu    z0.h, p8/m, z0.h
// CHECK: [[@LINE-1]]:{{[0-9]+}}: error: restricted predicate has range [0, 7].
// CHECK-NEXT: fcvtzu    z0.h, p8/m, z0.h
// CHECK-NOT: [[@LINE-1]]:{{[0-9]+}}:
