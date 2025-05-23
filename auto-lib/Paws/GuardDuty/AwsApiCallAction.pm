# Generated by default/object.tt
package Paws::GuardDuty::AwsApiCallAction;
  use Moose;
  has AffectedResources => (is => 'ro', isa => 'Paws::GuardDuty::AffectedResources', request_name => 'affectedResources', traits => ['NameInRequest']);
  has Api => (is => 'ro', isa => 'Str', request_name => 'api', traits => ['NameInRequest']);
  has CallerType => (is => 'ro', isa => 'Str', request_name => 'callerType', traits => ['NameInRequest']);
  has DomainDetails => (is => 'ro', isa => 'Paws::GuardDuty::DomainDetails', request_name => 'domainDetails', traits => ['NameInRequest']);
  has ErrorCode => (is => 'ro', isa => 'Str', request_name => 'errorCode', traits => ['NameInRequest']);
  has RemoteAccountDetails => (is => 'ro', isa => 'Paws::GuardDuty::RemoteAccountDetails', request_name => 'remoteAccountDetails', traits => ['NameInRequest']);
  has RemoteIpDetails => (is => 'ro', isa => 'Paws::GuardDuty::RemoteIpDetails', request_name => 'remoteIpDetails', traits => ['NameInRequest']);
  has ServiceName => (is => 'ro', isa => 'Str', request_name => 'serviceName', traits => ['NameInRequest']);
  has UserAgent => (is => 'ro', isa => 'Str', request_name => 'userAgent', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::AwsApiCallAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::AwsApiCallAction object:

  $service_obj->Method(Att1 => { AffectedResources => $value, ..., UserAgent => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::AwsApiCallAction object:

  $result = $service_obj->Method(...);
  $result->Att1->AffectedResources

=head1 DESCRIPTION

Contains information about the API action.

=head1 ATTRIBUTES


=head2 AffectedResources => L<Paws::GuardDuty::AffectedResources>

The details of the Amazon Web Services account that made the API call.
This field identifies the resources that were affected by this API
call.


=head2 Api => Str

The Amazon Web Services API name.


=head2 CallerType => Str

The Amazon Web Services API caller type.


=head2 DomainDetails => L<Paws::GuardDuty::DomainDetails>

The domain information for the Amazon Web Services API call.


=head2 ErrorCode => Str

The error code of the failed Amazon Web Services API action.


=head2 RemoteAccountDetails => L<Paws::GuardDuty::RemoteAccountDetails>

The details of the Amazon Web Services account that made the API call.
This field appears if the call was made from outside your account.


=head2 RemoteIpDetails => L<Paws::GuardDuty::RemoteIpDetails>

The remote IP information of the connection that initiated the Amazon
Web Services API call.


=head2 ServiceName => Str

The Amazon Web Services service name whose API was invoked.


=head2 UserAgent => Str

The agent through which the API request was made.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

