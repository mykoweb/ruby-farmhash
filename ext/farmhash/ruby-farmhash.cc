#include <ruby.h>
#include "farmhash.h"

// Use this typedef to make the compiler happy when
// calling rb_define_method()
typedef VALUE (ruby_method)(...);

extern "C" VALUE farmhash_fingerprint64(VALUE mod, VALUE input)
{
  return ULL2NUM(util::Fingerprint64(StringValuePtr(input), RSTRING_LEN(input)));
}

extern "C" void Init_farmhash()
{
  VALUE mFarmHash = rb_define_module("FarmHash");
  VALUE mInternal = rb_define_module_under(mFarmHash, "Internal");

  rb_define_singleton_method(mInternal, "fingerprint64", (ruby_method*) &farmhash_fingerprint64, 1);
}
