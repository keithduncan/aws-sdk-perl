# Generated by default/object.tt
package Paws::Connect::ContactAnalysis;
  use Moose;
  has Transcript => (is => 'ro', isa => 'Paws::Connect::Transcript');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ContactAnalysis

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::ContactAnalysis object:

  $service_obj->Method(Att1 => { Transcript => $value, ..., Transcript => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::ContactAnalysis object:

  $result = $service_obj->Method(...);
  $result->Att1->Transcript

=head1 DESCRIPTION

A structure that defines search criteria for contacts using analysis
outputs from Amazon Connect Contact Lens.

=head1 ATTRIBUTES


=head2 Transcript => L<Paws::Connect::Transcript>

Search criteria based on transcript analyzed by Amazon Connect Contact
Lens.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

