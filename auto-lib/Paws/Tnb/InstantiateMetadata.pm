# Generated by default/object.tt
package Paws::Tnb::InstantiateMetadata;
  use Moose;
  has AdditionalParamsForNs => (is => 'ro', isa => 'Paws::Tnb::Document', request_name => 'additionalParamsForNs', traits => ['NameInRequest']);
  has NsdInfoId => (is => 'ro', isa => 'Str', request_name => 'nsdInfoId', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::InstantiateMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Tnb::InstantiateMetadata object:

  $service_obj->Method(Att1 => { AdditionalParamsForNs => $value, ..., NsdInfoId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Tnb::InstantiateMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->AdditionalParamsForNs

=head1 DESCRIPTION

Metadata related to the configuration properties used during
instantiation of the network instance.

=head1 ATTRIBUTES


=head2 AdditionalParamsForNs => L<Paws::Tnb::Document>

The configurable properties used during instantiation.


=head2 B<REQUIRED> NsdInfoId => Str

The network service descriptor used for instantiating the network
instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Tnb>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

