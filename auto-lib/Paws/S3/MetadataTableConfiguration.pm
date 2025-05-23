# Generated by default/object.tt
package Paws::S3::MetadataTableConfiguration;
  use Moose;
  has S3TablesDestination => (is => 'ro', isa => 'Paws::S3::S3TablesDestination', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::MetadataTableConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::MetadataTableConfiguration object:

  $service_obj->Method(Att1 => { S3TablesDestination => $value, ..., S3TablesDestination => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::MetadataTableConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->S3TablesDestination

=head1 DESCRIPTION

The metadata table configuration for a general purpose bucket.

=head1 ATTRIBUTES


=head2 B<REQUIRED> S3TablesDestination => L<Paws::S3::S3TablesDestination>

The destination information for the metadata table configuration. The
destination table bucket must be in the same Region and Amazon Web
Services account as the general purpose bucket. The specified metadata
table name must be unique within the C<aws_s3_metadata> namespace in
the destination table bucket.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

