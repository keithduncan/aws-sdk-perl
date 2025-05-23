# Generated by default/object.tt
package Paws::CleanRooms::PrivacyBudgetTemplate;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest'], required => 1);
  has AutoRefresh => (is => 'ro', isa => 'Str', request_name => 'autoRefresh', traits => ['NameInRequest'], required => 1);
  has CollaborationArn => (is => 'ro', isa => 'Str', request_name => 'collaborationArn', traits => ['NameInRequest'], required => 1);
  has CollaborationId => (is => 'ro', isa => 'Str', request_name => 'collaborationId', traits => ['NameInRequest'], required => 1);
  has CreateTime => (is => 'ro', isa => 'Str', request_name => 'createTime', traits => ['NameInRequest'], required => 1);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest'], required => 1);
  has MembershipArn => (is => 'ro', isa => 'Str', request_name => 'membershipArn', traits => ['NameInRequest'], required => 1);
  has MembershipId => (is => 'ro', isa => 'Str', request_name => 'membershipId', traits => ['NameInRequest'], required => 1);
  has Parameters => (is => 'ro', isa => 'Paws::CleanRooms::PrivacyBudgetTemplateParametersOutput', request_name => 'parameters', traits => ['NameInRequest'], required => 1);
  has PrivacyBudgetType => (is => 'ro', isa => 'Str', request_name => 'privacyBudgetType', traits => ['NameInRequest'], required => 1);
  has UpdateTime => (is => 'ro', isa => 'Str', request_name => 'updateTime', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::PrivacyBudgetTemplate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CleanRooms::PrivacyBudgetTemplate object:

  $service_obj->Method(Att1 => { Arn => $value, ..., UpdateTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CleanRooms::PrivacyBudgetTemplate object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

An object that defines the privacy budget template.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the privacy budget template.


=head2 B<REQUIRED> AutoRefresh => Str

How often the privacy budget refreshes.

If you plan to regularly bring new data into the collaboration, use
C<CALENDAR_MONTH> to automatically get a new privacy budget for the
collaboration every calendar month. Choosing this option allows
arbitrary amounts of information to be revealed about rows of the data
when repeatedly queried across refreshes. Avoid choosing this if the
same rows will be repeatedly queried between privacy budget refreshes.


=head2 B<REQUIRED> CollaborationArn => Str

The ARN of the collaboration that contains this privacy budget
template.


=head2 B<REQUIRED> CollaborationId => Str

The unique ID of the collaboration that contains this privacy budget
template.


=head2 B<REQUIRED> CreateTime => Str

The time at which the privacy budget template was created.


=head2 B<REQUIRED> Id => Str

The unique identifier of the privacy budget template.


=head2 B<REQUIRED> MembershipArn => Str

The Amazon Resource Name (ARN) of the member who created the privacy
budget template.


=head2 B<REQUIRED> MembershipId => Str

The identifier for a membership resource.


=head2 B<REQUIRED> Parameters => L<Paws::CleanRooms::PrivacyBudgetTemplateParametersOutput>

Specifies the epsilon and noise parameters for the privacy budget
template.


=head2 B<REQUIRED> PrivacyBudgetType => Str

Specifies the type of the privacy budget template.


=head2 B<REQUIRED> UpdateTime => Str

The most recent time at which the privacy budget template was updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

