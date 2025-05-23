# Generated by default/object.tt
package Paws::SecurityHub::AwsAthenaWorkGroupConfigurationResultConfigurationDetails;
  use Moose;
  has EncryptionConfiguration => (is => 'ro', isa => 'Paws::SecurityHub::AwsAthenaWorkGroupConfigurationResultConfigurationEncryptionConfigurationDetails');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsAthenaWorkGroupConfigurationResultConfigurationDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsAthenaWorkGroupConfigurationResultConfigurationDetails object:

  $service_obj->Method(Att1 => { EncryptionConfiguration => $value, ..., EncryptionConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsAthenaWorkGroupConfigurationResultConfigurationDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->EncryptionConfiguration

=head1 DESCRIPTION

The location in Amazon Simple Storage Service (Amazon S3) where query
and calculation results are stored and the encryption option, if any,
used for query and calculation results. These are known as client-side
settings. If workgroup settings override client-side settings, then the
query uses the workgroup settings.

=head1 ATTRIBUTES


=head2 EncryptionConfiguration => L<Paws::SecurityHub::AwsAthenaWorkGroupConfigurationResultConfigurationEncryptionConfigurationDetails>

Specifies the method used to encrypt the userE<rsquo>s data stores in
the Athena workgroup.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

