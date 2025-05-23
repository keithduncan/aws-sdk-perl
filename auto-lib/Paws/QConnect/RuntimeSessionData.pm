# Generated by default/object.tt
package Paws::QConnect::RuntimeSessionData;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', request_name => 'key', traits => ['NameInRequest'], required => 1);
  has Value => (is => 'ro', isa => 'Paws::QConnect::RuntimeSessionDataValue', request_name => 'value', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::RuntimeSessionData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::QConnect::RuntimeSessionData object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::QConnect::RuntimeSessionData object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

The list of key-value pairs that are stored on the session.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

The key of the data stored on the session.


=head2 B<REQUIRED> Value => L<Paws::QConnect::RuntimeSessionDataValue>

The value of the data stored on the session.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

