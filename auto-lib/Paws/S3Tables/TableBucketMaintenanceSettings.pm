# Generated by default/object.tt
package Paws::S3Tables::TableBucketMaintenanceSettings;
  use Moose;
  has IcebergUnreferencedFileRemoval => (is => 'ro', isa => 'Paws::S3Tables::IcebergUnreferencedFileRemovalSettings', request_name => 'icebergUnreferencedFileRemoval', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Tables::TableBucketMaintenanceSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3Tables::TableBucketMaintenanceSettings object:

  $service_obj->Method(Att1 => { IcebergUnreferencedFileRemoval => $value, ..., IcebergUnreferencedFileRemoval => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3Tables::TableBucketMaintenanceSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->IcebergUnreferencedFileRemoval

=head1 DESCRIPTION

Contains details about the maintenance settings for the table bucket.

=head1 ATTRIBUTES


=head2 IcebergUnreferencedFileRemoval => L<Paws::S3Tables::IcebergUnreferencedFileRemovalSettings>

The unreferenced file removal settings for the table bucket.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3Tables>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

