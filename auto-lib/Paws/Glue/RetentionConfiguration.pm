# Generated by default/object.tt
package Paws::Glue::RetentionConfiguration;
  use Moose;
  has IcebergConfiguration => (is => 'ro', isa => 'Paws::Glue::IcebergRetentionConfiguration', request_name => 'icebergConfiguration', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::RetentionConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::RetentionConfiguration object:

  $service_obj->Method(Att1 => { IcebergConfiguration => $value, ..., IcebergConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::RetentionConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->IcebergConfiguration

=head1 DESCRIPTION

The configuration for a snapshot retention optimizer.

=head1 ATTRIBUTES


=head2 IcebergConfiguration => L<Paws::Glue::IcebergRetentionConfiguration>

The configuration for an Iceberg snapshot retention optimizer.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

