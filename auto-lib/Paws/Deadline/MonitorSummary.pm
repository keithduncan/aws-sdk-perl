# Generated by default/object.tt
package Paws::Deadline::MonitorSummary;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest'], required => 1);
  has CreatedBy => (is => 'ro', isa => 'Str', request_name => 'createdBy', traits => ['NameInRequest'], required => 1);
  has DisplayName => (is => 'ro', isa => 'Str', request_name => 'displayName', traits => ['NameInRequest'], required => 1);
  has IdentityCenterApplicationArn => (is => 'ro', isa => 'Str', request_name => 'identityCenterApplicationArn', traits => ['NameInRequest'], required => 1);
  has IdentityCenterInstanceArn => (is => 'ro', isa => 'Str', request_name => 'identityCenterInstanceArn', traits => ['NameInRequest'], required => 1);
  has MonitorId => (is => 'ro', isa => 'Str', request_name => 'monitorId', traits => ['NameInRequest'], required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest'], required => 1);
  has Subdomain => (is => 'ro', isa => 'Str', request_name => 'subdomain', traits => ['NameInRequest'], required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', request_name => 'updatedAt', traits => ['NameInRequest']);
  has UpdatedBy => (is => 'ro', isa => 'Str', request_name => 'updatedBy', traits => ['NameInRequest']);
  has Url => (is => 'ro', isa => 'Str', request_name => 'url', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::MonitorSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Deadline::MonitorSummary object:

  $service_obj->Method(Att1 => { CreatedAt => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Deadline::MonitorSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedAt

=head1 DESCRIPTION

Provides information about a monitor in Deadline Cloud.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedAt => Str

The UNIX timestamp of the date and time that the monitor was created.


=head2 B<REQUIRED> CreatedBy => Str

The user name of the person that created the monitor.


=head2 B<REQUIRED> DisplayName => Str

The name of the monitor that displays on the Deadline Cloud console.

This field can store any content. Escape or encode this content before
displaying it on a webpage or any other system that might interpret the
content of this field.


=head2 B<REQUIRED> IdentityCenterApplicationArn => Str

The Amazon Resource Name (ARN) that the IAM Identity Center assigned to
the monitor when it was created.


=head2 B<REQUIRED> IdentityCenterInstanceArn => Str

The Amazon Resource Name (ARN) of the IAM Identity Center instance
responsible for authenticating monitor users.


=head2 B<REQUIRED> MonitorId => Str

The unique identifier for the monitor.


=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role for the monitor. Users
of the monitor use this role to access Deadline Cloud resources.


=head2 B<REQUIRED> Subdomain => Str

The subdomain used for the monitor URL. The full URL of the monitor is
subdomain.Region.deadlinecloud.amazonaws.com.


=head2 UpdatedAt => Str

The UNIX timestamp of the date and time that the monitor was last
updated.


=head2 UpdatedBy => Str

The user name of the person that last updated the monitor.


=head2 B<REQUIRED> Url => Str

The complete URL of the monitor. The full URL of the monitor is
subdomain.Region.deadlinecloud.amazonaws.com.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

