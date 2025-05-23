# Generated by default/object.tt
package Paws::ConnectCampaigns::InstanceOnboardingJobStatus;
  use Moose;
  has ConnectInstanceId => (is => 'ro', isa => 'Str', request_name => 'connectInstanceId', traits => ['NameInRequest'], required => 1);
  has FailureCode => (is => 'ro', isa => 'Str', request_name => 'failureCode', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaigns::InstanceOnboardingJobStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ConnectCampaigns::InstanceOnboardingJobStatus object:

  $service_obj->Method(Att1 => { ConnectInstanceId => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ConnectCampaigns::InstanceOnboardingJobStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->ConnectInstanceId

=head1 DESCRIPTION

Instance onboarding job status object

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectInstanceId => Str




=head2 FailureCode => Str




=head2 B<REQUIRED> Status => Str





=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ConnectCampaigns>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

