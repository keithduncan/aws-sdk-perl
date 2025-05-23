# Generated by default/object.tt
package Paws::Athena::QueryResultsS3AccessGrantsConfiguration;
  use Moose;
  has AuthenticationType => (is => 'ro', isa => 'Str', required => 1);
  has CreateUserLevelPrefix => (is => 'ro', isa => 'Bool');
  has EnableS3AccessGrants => (is => 'ro', isa => 'Bool', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::QueryResultsS3AccessGrantsConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Athena::QueryResultsS3AccessGrantsConfiguration object:

  $service_obj->Method(Att1 => { AuthenticationType => $value, ..., EnableS3AccessGrants => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Athena::QueryResultsS3AccessGrantsConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AuthenticationType

=head1 DESCRIPTION

Specifies whether Amazon S3 access grants are enabled for query
results.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthenticationType => Str

The authentication type used for Amazon S3 access grants. Currently,
only C<DIRECTORY_IDENTITY> is supported.


=head2 CreateUserLevelPrefix => Bool

When enabled, appends the user ID as an Amazon S3 path prefix to the
query result output location.


=head2 B<REQUIRED> EnableS3AccessGrants => Bool

Specifies whether Amazon S3 access grants are enabled for query
results.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

