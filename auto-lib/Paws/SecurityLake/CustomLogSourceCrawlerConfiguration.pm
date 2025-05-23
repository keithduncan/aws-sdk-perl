# Generated by default/object.tt
package Paws::SecurityLake::CustomLogSourceCrawlerConfiguration;
  use Moose;
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityLake::CustomLogSourceCrawlerConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityLake::CustomLogSourceCrawlerConfiguration object:

  $service_obj->Method(Att1 => { RoleArn => $value, ..., RoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityLake::CustomLogSourceCrawlerConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->RoleArn

=head1 DESCRIPTION

The configuration used for the Glue Crawler for a third-party custom
source.

=head1 ATTRIBUTES


=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the Identity and Access Management
(IAM) role to be used by the Glue crawler. The recommended IAM policies
are:

=over

=item *

The managed policy C<AWSGlueServiceRole>

=item *

A custom policy granting access to your Amazon S3 Data Lake

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityLake>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

