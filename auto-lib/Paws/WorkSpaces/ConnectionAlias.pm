# Generated by default/object.tt
package Paws::WorkSpaces::ConnectionAlias;
  use Moose;
  has AliasId => (is => 'ro', isa => 'Str');
  has Associations => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::ConnectionAliasAssociation]');
  has ConnectionString => (is => 'ro', isa => 'Str');
  has OwnerAccountId => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::ConnectionAlias

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkSpaces::ConnectionAlias object:

  $service_obj->Method(Att1 => { AliasId => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkSpaces::ConnectionAlias object:

  $result = $service_obj->Method(...);
  $result->Att1->AliasId

=head1 DESCRIPTION

Describes a connection alias. Connection aliases are used for
cross-Region redirection. For more information, see Cross-Region
Redirection for Amazon WorkSpaces
(https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).

=head1 ATTRIBUTES


=head2 AliasId => Str

The identifier of the connection alias.


=head2 Associations => ArrayRef[L<Paws::WorkSpaces::ConnectionAliasAssociation>]

The association status of the connection alias.


=head2 ConnectionString => Str

The connection string specified for the connection alias. The
connection string must be in the form of a fully qualified domain name
(FQDN), such as C<www.example.com>.


=head2 OwnerAccountId => Str

The identifier of the Amazon Web Services account that owns the
connection alias.


=head2 State => Str

The current state of the connection alias.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

