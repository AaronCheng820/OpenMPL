#include <pybind11/pybind11.h>
#include "SimpleMPL.h"

PYBIND11_MODULE(openmpl_cpp, m) {
    pybind11::class_<SimpleMPL::SimpleMPL>(m, "SimpleMPL" )
        .def( pybind11::init<>() )
        .def("get_conflict_num", &SimpleMPL::SimpleMPL::get_conflict_num);
}
