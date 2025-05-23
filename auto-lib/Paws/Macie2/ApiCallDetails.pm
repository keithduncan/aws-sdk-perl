# Generated by default/object.tt
package Paws::Macie2::ApiCallDetails;
  use Moose;
  has Api => (is => 'ro', isa => 'Str', request_name => 'api', traits => ['NameInRequest']);
  has ApiServiceName => (is => 'ro', isa => 'Str', request_name => 'apiServiceName', traits => ['NameInRequest']);
  has FirstSeen => (is => 'ro', isa => 'Str', request_name => 'firstSeen', traits => ['NameInRequest']);
  has LastSeen => (is => 'ro', isa => 'Str', request_name => 'lastSeen', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::ApiCallDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Macie2::ApiCallDetails object:

  $service_obj->Method(Att1 => { Api => $value, ..., LastSeen => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Macie2::ApiCallDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Api

=head1 DESCRIPTION

Provides information about an API operation that an entity invoked for
an affected resource.

=head1 ATTRIBUTES


=head2 Api => Str

The name of the operation that was invoked most recently and produced
the finding.


=head2 ApiServiceName => Str

The URL of the Amazon Web Services service that provides the operation,
for example: s3.amazonaws.com.


=head2 FirstSeen => Str

The first date and time, in UTC and extended ISO 8601 format, when any
operation was invoked and produced the finding.


=head2 LastSeen => Str

The most recent date and time, in UTC and extended ISO 8601 format,
when the specified operation (api) was invoked and produced the
finding.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

