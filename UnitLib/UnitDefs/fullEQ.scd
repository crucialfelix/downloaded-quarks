/*
\fullEQ

This is a filter with a lowshelf filter, 3 parametric filters and a hihgshelf filter.


eq: an UEQ object, holding all settings for the eq.

--
this is an Udef definition file
part of the Unit lib default Udefs set
*/

MultiChannelUdef( \fullEQ, { 
	var in;
	in = UIn.ar( 0, Udef.numChannels );
	UOut.ar(0, UEQ.ar( in, \eq, \default ) );
})	
	.category_( 'eq' );