# Generated by default/object.tt
package Paws::ConnectCampaignsV2::IntegrationSummary;
  use Moose;
  has CustomerProfiles => (is => 'ro', isa => 'Paws::ConnectCampaignsV2::CustomerProfilesIntegrationSummary', request_name => 'customerProfiles', traits => ['NameInRequest']);
  has QConnect => (is => 'ro', isa => 'Paws::ConnectCampaignsV2::QConnectIntegrationSummary', request_name => 'qConnect', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaignsV2::IntegrationSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ConnectCampaignsV2::IntegrationSummary object:

  $service_obj->Method(Att1 => { CustomerProfiles => $value, ..., QConnect => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ConnectCampaignsV2::IntegrationSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CustomerProfiles

=head1 DESCRIPTION

Integration summary for Connect instance.

=head1 ATTRIBUTES


=head2 CustomerProfiles => L<Paws::ConnectCampaignsV2::CustomerProfilesIntegrationSummary>




=head2 QConnect => L<Paws::ConnectCampaignsV2::QConnectIntegrationSummary>





=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ConnectCampaignsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

