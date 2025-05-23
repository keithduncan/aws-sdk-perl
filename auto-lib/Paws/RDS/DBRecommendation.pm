# Generated by default/object.tt
package Paws::RDS::DBRecommendation;
  use Moose;
  has AdditionalInfo => (is => 'ro', isa => 'Str');
  has Category => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Detection => (is => 'ro', isa => 'Str');
  has Impact => (is => 'ro', isa => 'Str');
  has IssueDetails => (is => 'ro', isa => 'Paws::RDS::IssueDetails');
  has Links => (is => 'ro', isa => 'ArrayRef[Paws::RDS::DocLink]');
  has Reason => (is => 'ro', isa => 'Str');
  has Recommendation => (is => 'ro', isa => 'Str');
  has RecommendationId => (is => 'ro', isa => 'Str');
  has RecommendedActions => (is => 'ro', isa => 'ArrayRef[Paws::RDS::RecommendedAction]');
  has ResourceArn => (is => 'ro', isa => 'Str');
  has Severity => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TypeDetection => (is => 'ro', isa => 'Str');
  has TypeId => (is => 'ro', isa => 'Str');
  has TypeRecommendation => (is => 'ro', isa => 'Str');
  has UpdatedTime => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBRecommendation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::DBRecommendation object:

  $service_obj->Method(Att1 => { AdditionalInfo => $value, ..., UpdatedTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::DBRecommendation object:

  $result = $service_obj->Method(...);
  $result->Att1->AdditionalInfo

=head1 DESCRIPTION

The recommendation for your DB instances, DB clusters, and DB parameter
groups.

=head1 ATTRIBUTES


=head2 AdditionalInfo => Str

Additional information about the recommendation. The information might
contain markdown.


=head2 Category => Str

The category of the recommendation.

Valid values:

=over

=item *

C<performance efficiency>

=item *

C<security>

=item *

C<reliability>

=item *

C<cost optimization>

=item *

C<operational excellence>

=item *

C<sustainability>

=back



=head2 CreatedTime => Str

The time when the recommendation was created. For example,
C<2023-09-28T01:13:53.931000+00:00>.


=head2 Description => Str

A detailed description of the recommendation. The description might
contain markdown.


=head2 Detection => Str

A short description of the issue identified for this recommendation.
The description might contain markdown.


=head2 Impact => Str

A short description that explains the possible impact of an issue.


=head2 IssueDetails => L<Paws::RDS::IssueDetails>

Details of the issue that caused the recommendation.


=head2 Links => ArrayRef[L<Paws::RDS::DocLink>]

A link to documentation that provides additional information about the
recommendation.


=head2 Reason => Str

The reason why this recommendation was created. The information might
contain markdown.


=head2 Recommendation => Str

A short description of the recommendation to resolve an issue. The
description might contain markdown.


=head2 RecommendationId => Str

The unique identifier of the recommendation.


=head2 RecommendedActions => ArrayRef[L<Paws::RDS::RecommendedAction>]

A list of recommended actions.


=head2 ResourceArn => Str

The Amazon Resource Name (ARN) of the RDS resource associated with the
recommendation.


=head2 Severity => Str

The severity level of the recommendation. The severity level can help
you decide the urgency with which to address the recommendation.

Valid values:

=over

=item *

C<high>

=item *

C<medium>

=item *

C<low>

=item *

C<informational>

=back



=head2 Source => Str

The Amazon Web Services service that generated the recommendations.


=head2 Status => Str

The current status of the recommendation.

Valid values:

=over

=item *

C<active> - The recommendations which are ready for you to apply.

=item *

C<pending> - The applied or scheduled recommendations which are in
progress.

=item *

C<resolved> - The recommendations which are completed.

=item *

C<dismissed> - The recommendations that you dismissed.

=back



=head2 TypeDetection => Str

A short description of the recommendation type. The description might
contain markdown.


=head2 TypeId => Str

A value that indicates the type of recommendation. This value
determines how the description is rendered.


=head2 TypeRecommendation => Str

A short description that summarizes the recommendation to fix all the
issues of the recommendation type. The description might contain
markdown.


=head2 UpdatedTime => Str

The time when the recommendation was last updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

