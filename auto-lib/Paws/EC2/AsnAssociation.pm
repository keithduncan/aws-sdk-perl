package Paws::EC2::AsnAssociation;
  use Moose;
  has Asn => (is => 'ro', isa => 'Str', request_name => 'asn', traits => ['NameInRequest']);
  has Cidr => (is => 'ro', isa => 'Str', request_name => 'cidr', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has StatusMessage => (is => 'ro', isa => 'Str', request_name => 'statusMessage', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AsnAssociation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::AsnAssociation object:

  $service_obj->Method(Att1 => { Asn => $value, ..., StatusMessage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::AsnAssociation object:

  $result = $service_obj->Method(...);
  $result->Att1->Asn

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Asn => Str

The association's ASN.


=head2 Cidr => Str

The association's CIDR.


=head2 State => Str

The association's state.


=head2 StatusMessage => Str

The association's status message.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
