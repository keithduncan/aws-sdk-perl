# Generated by default/object.tt
package Paws::CloudFront::ContinuousDeploymentPolicyConfig;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);
  has StagingDistributionDnsNames => (is => 'ro', isa => 'Paws::CloudFront::StagingDistributionDnsNames', required => 1);
  has TrafficConfig => (is => 'ro', isa => 'Paws::CloudFront::TrafficConfig');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ContinuousDeploymentPolicyConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::ContinuousDeploymentPolicyConfig object:

  $service_obj->Method(Att1 => { Enabled => $value, ..., TrafficConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::ContinuousDeploymentPolicyConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Enabled

=head1 DESCRIPTION

Contains the configuration for a continuous deployment policy.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Enabled => Bool

A Boolean that indicates whether this continuous deployment policy is
enabled (in effect). When this value is C<true>, this policy is enabled
and in effect. When this value is C<false>, this policy is not enabled
and has no effect.


=head2 B<REQUIRED> StagingDistributionDnsNames => L<Paws::CloudFront::StagingDistributionDnsNames>

The CloudFront domain name of the staging distribution. For example:
C<d111111abcdef8.cloudfront.net>.


=head2 TrafficConfig => L<Paws::CloudFront::TrafficConfig>

Contains the parameters for routing production traffic from your
primary to staging distributions.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

