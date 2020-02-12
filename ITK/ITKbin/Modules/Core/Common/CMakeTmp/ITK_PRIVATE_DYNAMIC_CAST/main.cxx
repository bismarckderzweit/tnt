
#include "base.h"

int main(void)
{
  return bool(dynamic_cast<derived<int>*>(create()))?0:1;
}