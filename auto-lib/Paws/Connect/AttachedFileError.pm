# Generated by default/object.tt
package Paws::Connect::AttachedFileError;
  use Moose;
  has ErrorCode => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has FileId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::AttachedFileError

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::AttachedFileError object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., FileId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::AttachedFileError object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

Error describing a failure to retrieve attached file metadata through
BatchGetAttachedFileMetadata action.

=head1 ATTRIBUTES


=head2 ErrorCode => Str

Status code describing the failure.


=head2 ErrorMessage => Str

Why the attached file couldn't be retrieved.


=head2 FileId => Str

The unique identifier of the attached file resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

