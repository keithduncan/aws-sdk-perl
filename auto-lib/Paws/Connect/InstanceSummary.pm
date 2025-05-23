# Generated by default/object.tt
package Paws::Connect::InstanceSummary;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has IdentityManagementType => (is => 'ro', isa => 'Str');
  has InboundCallsEnabled => (is => 'ro', isa => 'Bool');
  has InstanceAccessUrl => (is => 'ro', isa => 'Str');
  has InstanceAlias => (is => 'ro', isa => 'Str');
  has InstanceStatus => (is => 'ro', isa => 'Str');
  has OutboundCallsEnabled => (is => 'ro', isa => 'Bool');
  has ServiceRole => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::InstanceSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::InstanceSummary object:

  $service_obj->Method(Att1 => { Arn => $value, ..., ServiceRole => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::InstanceSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Information about the instance.

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the instance.


=head2 CreatedTime => Str

When the instance was created.


=head2 Id => Str

The identifier of the instance.


=head2 IdentityManagementType => Str

The identity management type of the instance.


=head2 InboundCallsEnabled => Bool

Whether inbound calls are enabled.


=head2 InstanceAccessUrl => Str

This URL allows contact center users to access the Amazon Connect admin
website.


=head2 InstanceAlias => Str

The alias of the instance.


=head2 InstanceStatus => Str

The state of the instance.


=head2 OutboundCallsEnabled => Bool

Whether outbound calls are enabled.


=head2 ServiceRole => Str

The service role of the instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

