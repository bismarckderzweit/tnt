
struct __attribute__ ((visibility ("default"))) base
{
  virtual ~base() = 0;
};

template <typename T> struct derived : public base{ ~derived() {};};

base* create(void) __attribute__ ((visibility ("default")));
