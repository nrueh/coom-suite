


#include "src/coomsuite/encodings/encoding-constraint-handler.lp".
#include "src/coomsuite/encodings/show-constraint-handler.lp".

#show value/3.
#show set_value/3.

#script (python)

import constraint_handler as ch

def main(ctrl):
    ch.add_to_control(ctrl)
    ctrl.ground()
    ctrl.solve()

#end.
