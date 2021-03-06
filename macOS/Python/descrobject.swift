
typealias getter = @convention(c) (UnsafeMutablePointer<PyObject>?, UnsafeMutableRawPointer?) -> UnsafeMutablePointer<PyObject>?
typealias setter = @convention(c) (UnsafeMutablePointer<PyObject>?, UnsafeMutablePointer<PyObject>?, UnsafeMutableRawPointer?) -> Int32
struct PyGetSetDef {
  var name: UnsafeMutablePointer<CChar>!
  var get: getter!
  var set: setter!
  var doc: UnsafeMutablePointer<CChar>!
  var closure: UnsafeMutableRawPointer!
  init()
  init(name: UnsafeMutablePointer<CChar>!, get: getter!, set: setter!, doc: UnsafeMutablePointer<CChar>!, closure: UnsafeMutableRawPointer!)
}
typealias wrapperfunc = @convention(c) (UnsafeMutablePointer<PyObject>?, UnsafeMutablePointer<PyObject>?, UnsafeMutableRawPointer?) -> UnsafeMutablePointer<PyObject>?
typealias wrapperfunc_kwds = @convention(c) (UnsafeMutablePointer<PyObject>?, UnsafeMutablePointer<PyObject>?, UnsafeMutableRawPointer?, UnsafeMutablePointer<PyObject>?) -> UnsafeMutablePointer<PyObject>?
struct wrapperbase {
  var name: UnsafeMutablePointer<CChar>!
  var offset: Int32
  var function: UnsafeMutableRawPointer!
  var wrapper: wrapperfunc!
  var doc: UnsafeMutablePointer<CChar>!
  var flags: Int32
  var name_strobj: UnsafeMutablePointer<PyObject>!
  init()
  init(name: UnsafeMutablePointer<CChar>!, offset: Int32, function: UnsafeMutableRawPointer!, wrapper: wrapperfunc!, doc: UnsafeMutablePointer<CChar>!, flags: Int32, name_strobj: UnsafeMutablePointer<PyObject>!)
}
var PyWrapperFlag_KEYWORDS: Int32 { get }
struct PyDescrObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>!
  var d_type: UnsafeMutablePointer<PyTypeObject>!
  var d_name: UnsafeMutablePointer<PyObject>!
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>!, d_type: UnsafeMutablePointer<PyTypeObject>!, d_name: UnsafeMutablePointer<PyObject>!)
}
struct PyMethodDescrObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>!
  var d_type: UnsafeMutablePointer<PyTypeObject>!
  var d_name: UnsafeMutablePointer<PyObject>!
  var d_method: UnsafeMutablePointer<PyMethodDef>!
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>!, d_type: UnsafeMutablePointer<PyTypeObject>!, d_name: UnsafeMutablePointer<PyObject>!, d_method: UnsafeMutablePointer<PyMethodDef>!)
}
struct PyMemberDescrObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>!
  var d_type: UnsafeMutablePointer<PyTypeObject>!
  var d_name: UnsafeMutablePointer<PyObject>!
  var d_member: UnsafeMutablePointer<PyMemberDef>!
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>!, d_type: UnsafeMutablePointer<PyTypeObject>!, d_name: UnsafeMutablePointer<PyObject>!, d_member: UnsafeMutablePointer<PyMemberDef>!)
}
struct PyGetSetDescrObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>!
  var d_type: UnsafeMutablePointer<PyTypeObject>!
  var d_name: UnsafeMutablePointer<PyObject>!
  var d_getset: UnsafeMutablePointer<PyGetSetDef>!
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>!, d_type: UnsafeMutablePointer<PyTypeObject>!, d_name: UnsafeMutablePointer<PyObject>!, d_getset: UnsafeMutablePointer<PyGetSetDef>!)
}
struct PyWrapperDescrObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>!
  var d_type: UnsafeMutablePointer<PyTypeObject>!
  var d_name: UnsafeMutablePointer<PyObject>!
  var d_base: UnsafeMutablePointer<wrapperbase>!
  var d_wrapped: UnsafeMutableRawPointer!
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>!, d_type: UnsafeMutablePointer<PyTypeObject>!, d_name: UnsafeMutablePointer<PyObject>!, d_base: UnsafeMutablePointer<wrapperbase>!, d_wrapped: UnsafeMutableRawPointer!)
}
var PyWrapperDescr_Type: PyTypeObject
var PyDictProxy_Type: PyTypeObject
var PyGetSetDescr_Type: PyTypeObject
var PyMemberDescr_Type: PyTypeObject
func PyDescr_NewMethod(_: UnsafeMutablePointer<PyTypeObject>!, _: UnsafeMutablePointer<PyMethodDef>!) -> UnsafeMutablePointer<PyObject>!
func PyDescr_NewClassMethod(_: UnsafeMutablePointer<PyTypeObject>!, _: UnsafeMutablePointer<PyMethodDef>!) -> UnsafeMutablePointer<PyObject>!
func PyDescr_NewMember(_: UnsafeMutablePointer<PyTypeObject>!, _: UnsafeMutablePointer<PyMemberDef>!) -> UnsafeMutablePointer<PyObject>!
func PyDescr_NewGetSet(_: UnsafeMutablePointer<PyTypeObject>!, _: UnsafeMutablePointer<PyGetSetDef>!) -> UnsafeMutablePointer<PyObject>!
func PyDescr_NewWrapper(_: UnsafeMutablePointer<PyTypeObject>!, _: UnsafeMutablePointer<wrapperbase>!, _: UnsafeMutableRawPointer!) -> UnsafeMutablePointer<PyObject>!
func PyDictProxy_New(_: UnsafeMutablePointer<PyObject>!) -> UnsafeMutablePointer<PyObject>!
func PyWrapper_New(_: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<PyObject>!) -> UnsafeMutablePointer<PyObject>!
var PyProperty_Type: PyTypeObject
