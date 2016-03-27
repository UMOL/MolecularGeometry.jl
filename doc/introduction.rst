Introduction
==================

This module ``MolecularGeometry`` is designed to provide 
two interfaces for measuring geometric quantities of
a molecule: one for the general array inputs and the
other for ``MolecularSystem`` objects.
The second interface make use of the first interface
internally.
All measurement functions are just ``methods`` for
function ``gage()``.
Different quantities are specified by the 
first argument which is a Julia type object
defined and exported by this module.

.. jl:autofile:: src/MolecularGeometry.jl