# Generated by default/object.tt
package Paws::Billing::ResourceTag;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', request_name => 'key', traits => ['NameInRequest'], required => 1);
  has Value => (is => 'ro', isa => 'Str', request_name => 'value', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Billing::ResourceTag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Billing::ResourceTag object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Billing::ResourceTag object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

The tag structure that contains a tag key and value.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

The key that's associated with the tag.


=head2 Value => Str

The value that's associated with the tag.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Billing>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

