# Sample code from Programing Ruby, page 281

VALUE
rb_check_convert_type(val, type, tname, method)
    VALUE val;
    int type;
    const char *tname, *method;
{
    VALUE v;

    /* always convert T_DATA */
    if (TYPE(val) == type && type != T_DATA) return val;
    v = convert_type(val, tname, method, Qfalse);
    if (NIL_P(v)) return Qnil;
    if (TYPE(v) != type) {
        rb_raise(rb_eTypeError, "%s#%s should return %s",
                 rb_obj_classname(val), method, tname);
    }
    return v;
}
