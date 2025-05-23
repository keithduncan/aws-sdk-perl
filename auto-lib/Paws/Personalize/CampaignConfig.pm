# Generated by default/object.tt
package Paws::Personalize::CampaignConfig;
  use Moose;
  has EnableMetadataWithRecommendations => (is => 'ro', isa => 'Bool', request_name => 'enableMetadataWithRecommendations', traits => ['NameInRequest']);
  has ItemExplorationConfig => (is => 'ro', isa => 'Paws::Personalize::HyperParameters', request_name => 'itemExplorationConfig', traits => ['NameInRequest']);
  has SyncWithLatestSolutionVersion => (is => 'ro', isa => 'Bool', request_name => 'syncWithLatestSolutionVersion', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CampaignConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Personalize::CampaignConfig object:

  $service_obj->Method(Att1 => { EnableMetadataWithRecommendations => $value, ..., SyncWithLatestSolutionVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Personalize::CampaignConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->EnableMetadataWithRecommendations

=head1 DESCRIPTION

The configuration details of a campaign.

=head1 ATTRIBUTES


=head2 EnableMetadataWithRecommendations => Bool

Whether metadata with recommendations is enabled for the campaign. If
enabled, you can specify the columns from your Items dataset in your
request for recommendations. Amazon Personalize returns this data for
each item in the recommendation response. For information about
enabling metadata for a campaign, see Enabling metadata in
recommendations for a campaign
(https://docs.aws.amazon.com/personalize/latest/dg/campaigns.html#create-campaign-return-metadata).

If you enable metadata in recommendations, you will incur additional
costs. For more information, see Amazon Personalize pricing
(https://aws.amazon.com/personalize/pricing/).


=head2 ItemExplorationConfig => L<Paws::Personalize::HyperParameters>

Specifies the exploration configuration hyperparameters, including
C<explorationWeight> and C<explorationItemAgeCutOff>, you want to use
to configure the amount of item exploration Amazon Personalize uses
when recommending items. Provide C<itemExplorationConfig> data only if
your solution uses the User-Personalization
(https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-new-item-USER_PERSONALIZATION.html)
recipe.


=head2 SyncWithLatestSolutionVersion => Bool

Whether the campaign automatically updates to use the latest solution
version (trained model) of a solution. If you specify C<True>, you must
specify the ARN of your I<solution> for the C<SolutionVersionArn>
parameter. It must be in C<SolutionArn/$LATEST> format. The default is
C<False> and you must manually update the campaign to deploy the latest
solution version.

For more information about automatic campaign updates, see Enabling
automatic campaign updates
(https://docs.aws.amazon.com/personalize/latest/dg/campaigns.html#create-campaign-automatic-latest-sv-update).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

