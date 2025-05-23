# Generated by default/object.tt
package Paws::ECRPublic::LayerFailure;
  use Moose;
  has FailureCode => (is => 'ro', isa => 'Str', request_name => 'failureCode', traits => ['NameInRequest']);
  has FailureReason => (is => 'ro', isa => 'Str', request_name => 'failureReason', traits => ['NameInRequest']);
  has LayerDigest => (is => 'ro', isa => 'Str', request_name => 'layerDigest', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ECRPublic::LayerFailure

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECRPublic::LayerFailure object:

  $service_obj->Method(Att1 => { FailureCode => $value, ..., LayerDigest => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECRPublic::LayerFailure object:

  $result = $service_obj->Method(...);
  $result->Att1->FailureCode

=head1 DESCRIPTION

An object that represents an Amazon ECR image layer failure.

=head1 ATTRIBUTES


=head2 FailureCode => Str

The failure code that's associated with the failure.


=head2 FailureReason => Str

The reason for the failure.


=head2 LayerDigest => Str

The layer digest that's associated with the failure.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECRPublic>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

