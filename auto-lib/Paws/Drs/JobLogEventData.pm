# Generated by default/object.tt
package Paws::Drs::JobLogEventData;
  use Moose;
  has ConversionProperties => (is => 'ro', isa => 'Paws::Drs::ConversionProperties', request_name => 'conversionProperties', traits => ['NameInRequest']);
  has ConversionServerID => (is => 'ro', isa => 'Str', request_name => 'conversionServerID', traits => ['NameInRequest']);
  has EventResourceData => (is => 'ro', isa => 'Paws::Drs::EventResourceData', request_name => 'eventResourceData', traits => ['NameInRequest']);
  has RawError => (is => 'ro', isa => 'Str', request_name => 'rawError', traits => ['NameInRequest']);
  has SourceServerID => (is => 'ro', isa => 'Str', request_name => 'sourceServerID', traits => ['NameInRequest']);
  has TargetInstanceID => (is => 'ro', isa => 'Str', request_name => 'targetInstanceID', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::JobLogEventData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Drs::JobLogEventData object:

  $service_obj->Method(Att1 => { ConversionProperties => $value, ..., TargetInstanceID => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Drs::JobLogEventData object:

  $result = $service_obj->Method(...);
  $result->Att1->ConversionProperties

=head1 DESCRIPTION

Metadata associated with a Job log.

=head1 ATTRIBUTES


=head2 ConversionProperties => L<Paws::Drs::ConversionProperties>

Properties of a conversion job


=head2 ConversionServerID => Str

The ID of a conversion server.


=head2 EventResourceData => L<Paws::Drs::EventResourceData>

Properties of resource related to a job event.


=head2 RawError => Str

A string representing a job error.


=head2 SourceServerID => Str

The ID of a Source Server.


=head2 TargetInstanceID => Str

The ID of a Recovery Instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Drs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

