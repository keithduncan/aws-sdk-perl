# Generated by default/object.tt
package Paws::LookoutEquipment::ModelDiagnosticsS3OutputConfiguration;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has Prefix => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::ModelDiagnosticsS3OutputConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LookoutEquipment::ModelDiagnosticsS3OutputConfiguration object:

  $service_obj->Method(Att1 => { Bucket => $value, ..., Prefix => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LookoutEquipment::ModelDiagnosticsS3OutputConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Bucket

=head1 DESCRIPTION

The Amazon S3 location for the pointwise model diagnostics for an
Amazon Lookout for Equipment model.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The name of the Amazon S3 bucket where the pointwise model diagnostics
are located. You must be the owner of the Amazon S3 bucket.


=head2 Prefix => Str

The Amazon S3 prefix for the location of the pointwise model
diagnostics. The prefix specifies the folder and evaluation result file
name. (C<bucket>).

When you call C<CreateModel> or C<UpdateModel>, specify the path within
the bucket that you want Lookout for Equipment to save the model to.
During training, Lookout for Equipment creates the model evaluation
model as a compressed JSON file with the name
C<model_diagnostics_results.json.gz>.

When you call C<DescribeModel> or C<DescribeModelVersion>, C<prefix>
contains the file path and filename of the model evaluation file.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

