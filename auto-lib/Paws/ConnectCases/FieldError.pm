# Generated by default/object.tt
package Paws::ConnectCases::FieldError;
  use Moose;
  has ErrorCode => (is => 'ro', isa => 'Str', request_name => 'errorCode', traits => ['NameInRequest'], required => 1);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest'], required => 1);
  has Message => (is => 'ro', isa => 'Str', request_name => 'message', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::FieldError

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ConnectCases::FieldError object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., Message => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ConnectCases::FieldError object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

Object for errors on fields.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ErrorCode => Str

The error code from getting a field.


=head2 B<REQUIRED> Id => Str

The field identifier that caused the error.


=head2 Message => Str

The error message from getting a field.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ConnectCases>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

