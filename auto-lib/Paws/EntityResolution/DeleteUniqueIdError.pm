# Generated by default/object.tt
package Paws::EntityResolution::DeleteUniqueIdError;
  use Moose;
  has ErrorType => (is => 'ro', isa => 'Str', request_name => 'errorType', traits => ['NameInRequest'], required => 1);
  has UniqueId => (is => 'ro', isa => 'Str', request_name => 'uniqueId', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::DeleteUniqueIdError

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EntityResolution::DeleteUniqueIdError object:

  $service_obj->Method(Att1 => { ErrorType => $value, ..., UniqueId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EntityResolution::DeleteUniqueIdError object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorType

=head1 DESCRIPTION

The Delete Unique Id error.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ErrorType => Str

The error type for the batch delete unique ID operation.


=head2 B<REQUIRED> UniqueId => Str

The unique ID that could not be deleted.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EntityResolution>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

