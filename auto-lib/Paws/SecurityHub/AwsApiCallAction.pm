# Generated by default/object.tt
package Paws::SecurityHub::AwsApiCallAction;
  use Moose;
  has AffectedResources => (is => 'ro', isa => 'Paws::SecurityHub::FieldMap');
  has Api => (is => 'ro', isa => 'Str');
  has CallerType => (is => 'ro', isa => 'Str');
  has DomainDetails => (is => 'ro', isa => 'Paws::SecurityHub::AwsApiCallActionDomainDetails');
  has FirstSeen => (is => 'ro', isa => 'Str');
  has LastSeen => (is => 'ro', isa => 'Str');
  has RemoteIpDetails => (is => 'ro', isa => 'Paws::SecurityHub::ActionRemoteIpDetails');
  has ServiceName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsApiCallAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsApiCallAction object:

  $service_obj->Method(Att1 => { AffectedResources => $value, ..., ServiceName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsApiCallAction object:

  $result = $service_obj->Method(...);
  $result->Att1->AffectedResources

=head1 DESCRIPTION

Provided if C<ActionType> is C<AWS_API_CALL>. It provides details about
the API call that was detected.

=head1 ATTRIBUTES


=head2 AffectedResources => L<Paws::SecurityHub::FieldMap>

Identifies the resources that were affected by the API call.


=head2 Api => Str

The name of the API method that was issued.

Length Constraints: 128.


=head2 CallerType => Str

Indicates whether the API call originated from a remote IP address
(C<remoteip>) or from a DNS domain (C<domain>).


=head2 DomainDetails => L<Paws::SecurityHub::AwsApiCallActionDomainDetails>

Provided if C<CallerType> is C<domain>. Provides information about the
DNS domain that the API call originated from.


=head2 FirstSeen => Str

A timestamp that indicates when the API call was first observed.

For more information about the validation and formatting of timestamp
fields in Security Hub, see Timestamps
(https://docs.aws.amazon.com/securityhub/1.0/APIReference/Welcome.html#timestamps).


=head2 LastSeen => Str

A timestamp that indicates when the API call was most recently
observed.

For more information about the validation and formatting of timestamp
fields in Security Hub, see Timestamps
(https://docs.aws.amazon.com/securityhub/1.0/APIReference/Welcome.html#timestamps).


=head2 RemoteIpDetails => L<Paws::SecurityHub::ActionRemoteIpDetails>

Provided if C<CallerType> is C<remoteip>. Provides information about
the remote IP address that the API call originated from.


=head2 ServiceName => Str

The name of the Amazon Web Services service that the API method belongs
to.

Length Constraints: 128.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

