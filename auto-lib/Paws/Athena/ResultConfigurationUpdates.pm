# Generated by default/object.tt
package Paws::Athena::ResultConfigurationUpdates;
  use Moose;
  has AclConfiguration => (is => 'ro', isa => 'Paws::Athena::AclConfiguration');
  has EncryptionConfiguration => (is => 'ro', isa => 'Paws::Athena::EncryptionConfiguration');
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str');
  has OutputLocation => (is => 'ro', isa => 'Str');
  has RemoveAclConfiguration => (is => 'ro', isa => 'Bool');
  has RemoveEncryptionConfiguration => (is => 'ro', isa => 'Bool');
  has RemoveExpectedBucketOwner => (is => 'ro', isa => 'Bool');
  has RemoveOutputLocation => (is => 'ro', isa => 'Bool');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::ResultConfigurationUpdates

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Athena::ResultConfigurationUpdates object:

  $service_obj->Method(Att1 => { AclConfiguration => $value, ..., RemoveOutputLocation => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Athena::ResultConfigurationUpdates object:

  $result = $service_obj->Method(...);
  $result->Att1->AclConfiguration

=head1 DESCRIPTION

The information about the updates in the query results, such as output
location and encryption configuration for the query results.

=head1 ATTRIBUTES


=head2 AclConfiguration => L<Paws::Athena::AclConfiguration>

The ACL configuration for the query results.


=head2 EncryptionConfiguration => L<Paws::Athena::EncryptionConfiguration>

The encryption configuration for query and calculation results.


=head2 ExpectedBucketOwner => Str

The Amazon Web Services account ID that you expect to be the owner of
the Amazon S3 bucket specified by ResultConfiguration$OutputLocation.
If set, Athena uses the value for C<ExpectedBucketOwner> when it makes
Amazon S3 calls to your specified output location. If the
C<ExpectedBucketOwner> Amazon Web Services account ID does not match
the actual owner of the Amazon S3 bucket, the call fails with a
permissions error.

If workgroup settings override client-side settings, then the query
uses the C<ExpectedBucketOwner> setting that is specified for the
workgroup, and also uses the location for storing query results
specified in the workgroup. See
WorkGroupConfiguration$EnforceWorkGroupConfiguration and Workgroup
Settings Override Client-Side Settings
(https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html).


=head2 OutputLocation => Str

The location in Amazon S3 where your query and calculation results are
stored, such as C<s3://path/to/query/bucket/>. If workgroup settings
override client-side settings, then the query uses the location for the
query results and the encryption configuration that are specified for
the workgroup. The "workgroup settings override" is specified in
C<EnforceWorkGroupConfiguration> (true/false) in the
C<WorkGroupConfiguration>. See
WorkGroupConfiguration$EnforceWorkGroupConfiguration.


=head2 RemoveAclConfiguration => Bool

If set to C<true>, indicates that the previously-specified ACL
configuration for queries in this workgroup should be ignored and set
to null. If set to C<false> or not set, and a value is present in the
C<AclConfiguration> of C<ResultConfigurationUpdates>, the
C<AclConfiguration> in the workgroup's C<ResultConfiguration> is
updated with the new value. For more information, see Workgroup
Settings Override Client-Side Settings
(https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html).


=head2 RemoveEncryptionConfiguration => Bool

If set to "true", indicates that the previously-specified encryption
configuration (also known as the client-side setting) for queries in
this workgroup should be ignored and set to null. If set to "false" or
not set, and a value is present in the C<EncryptionConfiguration> in
C<ResultConfigurationUpdates> (the client-side setting), the
C<EncryptionConfiguration> in the workgroup's C<ResultConfiguration>
will be updated with the new value. For more information, see Workgroup
Settings Override Client-Side Settings
(https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html).


=head2 RemoveExpectedBucketOwner => Bool

If set to "true", removes the Amazon Web Services account ID previously
specified for ResultConfiguration$ExpectedBucketOwner. If set to
"false" or not set, and a value is present in the
C<ExpectedBucketOwner> in C<ResultConfigurationUpdates> (the
client-side setting), the C<ExpectedBucketOwner> in the workgroup's
C<ResultConfiguration> is updated with the new value. For more
information, see Workgroup Settings Override Client-Side Settings
(https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html).


=head2 RemoveOutputLocation => Bool

If set to "true", indicates that the previously-specified query results
location (also known as a client-side setting) for queries in this
workgroup should be ignored and set to null. If set to "false" or not
set, and a value is present in the C<OutputLocation> in
C<ResultConfigurationUpdates> (the client-side setting), the
C<OutputLocation> in the workgroup's C<ResultConfiguration> will be
updated with the new value. For more information, see Workgroup
Settings Override Client-Side Settings
(https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

