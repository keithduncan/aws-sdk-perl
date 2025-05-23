# Generated by default/object.tt
package Paws::IoTSiteWise::Source;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has Location => (is => 'ro', isa => 'Paws::IoTSiteWise::Location', request_name => 'location', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::Source

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTSiteWise::Source object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Location => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTSiteWise::Source object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

The data source for the dataset.

=head1 ATTRIBUTES


=head2 Arn => Str

Contains the ARN of the dataset. If the source is Kendra, it's the ARN
of the Kendra index.


=head2 Location => L<Paws::IoTSiteWise::Location>

Contains the location information where the cited text is originally
stored. For example, if the data source is Kendra, and the text
synchronized is from an S3 bucket, then the location refers to an S3
object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

