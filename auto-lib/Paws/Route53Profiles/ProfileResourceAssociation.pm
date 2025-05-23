# Generated by default/object.tt
package Paws::Route53Profiles::ProfileResourceAssociation;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has ModificationTime => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has OwnerId => (is => 'ro', isa => 'Str');
  has ProfileId => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str');
  has ResourceProperties => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Profiles::ProfileResourceAssociation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53Profiles::ProfileResourceAssociation object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., StatusMessage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53Profiles::ProfileResourceAssociation object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

The association between a Route 53 Profile and resources.

=head1 ATTRIBUTES


=head2 CreationTime => Str

The date and time that the Profile resource association was created, in
Unix time format and Coordinated Universal Time (UTC).


=head2 Id => Str

ID of the Profile resource association.


=head2 ModificationTime => Str

The date and time that the Profile resource association was modified,
in Unix time format and Coordinated Universal Time (UTC).


=head2 Name => Str

Name of the Profile resource association.


=head2 OwnerId => Str

Amazon Web Services account ID of the Profile resource association
owner.


=head2 ProfileId => Str

Profile ID of the Profile that the resources are associated with.


=head2 ResourceArn => Str

The Amazon Resource Name (ARN) of the resource association.


=head2 ResourceProperties => Str

If the DNS resource is a DNS Firewall rule group, this indicates the
priority.


=head2 ResourceType => Str

Resource type, such as a private hosted zone, or DNS Firewall rule
group.


=head2 Status => Str

Status of the Profile resource association.


=head2 StatusMessage => Str

Additional information about the Profile resource association.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53Profiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

