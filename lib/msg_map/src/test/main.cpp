#include <iostream>
#include "core/msg_map.h"
#include "custom/custom.h"

BEGIN_MESSAGE_MAP()
    
END_MESSAGE_MAP()

int main(int argc, char **argv) {
    MMTApp::SetMMTDefaultASyncFunc(msg_map::QtASyncRecovery);
    
    MMTApp::GetMMT().Run();
    std::cout << "Hello, world!" << std::endl;
    return 0;
}

