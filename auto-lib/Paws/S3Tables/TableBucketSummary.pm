# Generated by default/object.tt
package Paws::S3Tables::TableBucketSummary;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest'], required => 1);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has OwnerAccountId => (is => 'ro', isa => 'Str', request_name => 'ownerAccountId', traits => ['NameInRequest'], required => 1);
  has TableBucketId => (is => 'ro', isa => 'Str', request_name => 'tableBucketId', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Tables::TableBucketSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3Tables::TableBucketSummary object:

  $service_obj->Method(Att1 => { Arn => $value, ..., TableBucketId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3Tables::TableBucketSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Contains details about a table bucket.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the table bucket.


=head2 B<REQUIRED> CreatedAt => Str

The date and time the table bucket was created at.


=head2 B<REQUIRED> Name => Str

The name of the table bucket.


=head2 B<REQUIRED> OwnerAccountId => Str

The ID of the account that owns the table bucket.


=head2 TableBucketId => Str

The system-assigned unique identifier for the table bucket.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3Tables>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

