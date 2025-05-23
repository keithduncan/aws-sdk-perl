# Generated by default/object.tt
package Paws::IoTSiteWise::JobConfiguration;
  use Moose;
  has FileFormat => (is => 'ro', isa => 'Paws::IoTSiteWise::FileFormat', request_name => 'fileFormat', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::JobConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTSiteWise::JobConfiguration object:

  $service_obj->Method(Att1 => { FileFormat => $value, ..., FileFormat => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTSiteWise::JobConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->FileFormat

=head1 DESCRIPTION

Contains the configuration information of a job, such as the file
format used to save data in Amazon S3.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FileFormat => L<Paws::IoTSiteWise::FileFormat>

The file format of the data in S3.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

