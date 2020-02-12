
#include "base.h"

base::~base() {}
base* create(void) { return new derived<int>(); }
