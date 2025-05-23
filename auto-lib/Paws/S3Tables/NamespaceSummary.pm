# Generated by default/object.tt
package Paws::S3Tables::NamespaceSummary;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest'], required => 1);
  has CreatedBy => (is => 'ro', isa => 'Str', request_name => 'createdBy', traits => ['NameInRequest'], required => 1);
  has Namespace => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'namespace', traits => ['NameInRequest'], required => 1);
  has NamespaceId => (is => 'ro', isa => 'Str', request_name => 'namespaceId', traits => ['NameInRequest']);
  has OwnerAccountId => (is => 'ro', isa => 'Str', request_name => 'ownerAccountId', traits => ['NameInRequest'], required => 1);
  has TableBucketId => (is => 'ro', isa => 'Str', request_name => 'tableBucketId', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Tables::NamespaceSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3Tables::NamespaceSummary object:

  $service_obj->Method(Att1 => { CreatedAt => $value, ..., TableBucketId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3Tables::NamespaceSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedAt

=head1 DESCRIPTION

Contains details about a namespace.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedAt => Str

The date and time the namespace was created at.


=head2 B<REQUIRED> CreatedBy => Str

The ID of the account that created the namespace.


=head2 B<REQUIRED> Namespace => ArrayRef[Str|Undef]

The name of the namespace.


=head2 NamespaceId => Str

The system-assigned unique identifier for the namespace.


=head2 B<REQUIRED> OwnerAccountId => Str

The ID of the account that owns the namespace.


=head2 TableBucketId => Str

The system-assigned unique identifier for the table bucket that
contains this namespace.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3Tables>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

