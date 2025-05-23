# Generated by default/object.tt
package Paws::MediaConvert::ExtendedDataServices;
  use Moose;
  has CopyProtectionAction => (is => 'ro', isa => 'Str', request_name => 'copyProtectionAction', traits => ['NameInRequest']);
  has VchipAction => (is => 'ro', isa => 'Str', request_name => 'vchipAction', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::ExtendedDataServices

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::ExtendedDataServices object:

  $service_obj->Method(Att1 => { CopyProtectionAction => $value, ..., VchipAction => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::ExtendedDataServices object:

  $result = $service_obj->Method(...);
  $result->Att1->CopyProtectionAction

=head1 DESCRIPTION

If your source content has EIA-608 Line 21 Data Services, enable this
feature to specify what MediaConvert does with the Extended Data
Services (XDS) packets. You can choose to pass through XDS packets, or
remove them from the output. For more information about XDS, see
EIA-608 Line Data Services, section 9.5.1.5 05h Content Advisory.

=head1 ATTRIBUTES


=head2 CopyProtectionAction => Str

The action to take on copy and redistribution control XDS packets. If
you select PASSTHROUGH, packets will not be changed. If you select
STRIP, any packets will be removed in output captions.


=head2 VchipAction => Str

The action to take on content advisory XDS packets. If you select
PASSTHROUGH, packets will not be changed. If you select STRIP, any
packets will be removed in output captions.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

