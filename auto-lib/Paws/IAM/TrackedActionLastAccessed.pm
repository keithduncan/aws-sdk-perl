# Generated by default/object.tt
package Paws::IAM::TrackedActionLastAccessed;
  use Moose;
  has ActionName => (is => 'ro', isa => 'Str');
  has LastAccessedEntity => (is => 'ro', isa => 'Str');
  has LastAccessedRegion => (is => 'ro', isa => 'Str');
  has LastAccessedTime => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::TrackedActionLastAccessed

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::TrackedActionLastAccessed object:

  $service_obj->Method(Att1 => { ActionName => $value, ..., LastAccessedTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::TrackedActionLastAccessed object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionName

=head1 DESCRIPTION

Contains details about the most recent attempt to access an action
within the service.

This data type is used as a response element in the
GetServiceLastAccessedDetails operation.

=head1 ATTRIBUTES


=head2 ActionName => Str

The name of the tracked action to which access was attempted. Tracked
actions are actions that report activity to IAM.


=head2 LastAccessedEntity => Str




=head2 LastAccessedRegion => Str

The Region from which the authenticated entity (user or role) last
attempted to access the tracked action. Amazon Web Services does not
report unauthenticated requests.

This field is null if no IAM entities attempted to access the service
within the tracking period
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period).


=head2 LastAccessedTime => Str

The date and time, in ISO 8601 date-time format
(http://www.iso.org/iso/iso8601), when an authenticated entity most
recently attempted to access the tracked service. Amazon Web Services
does not report unauthenticated requests.

This field is null if no IAM entities attempted to access the service
within the tracking period
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

