# Generated by default/object.tt
package Paws::LookoutMetrics::S3SourceConfig;
  use Moose;
  has FileFormatDescriptor => (is => 'ro', isa => 'Paws::LookoutMetrics::FileFormatDescriptor');
  has HistoricalDataPathList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RoleArn => (is => 'ro', isa => 'Str');
  has TemplatedPathList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::S3SourceConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LookoutMetrics::S3SourceConfig object:

  $service_obj->Method(Att1 => { FileFormatDescriptor => $value, ..., TemplatedPathList => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LookoutMetrics::S3SourceConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->FileFormatDescriptor

=head1 DESCRIPTION

Contains information about the configuration of the S3 bucket that
contains source files.

=head1 ATTRIBUTES


=head2 FileFormatDescriptor => L<Paws::LookoutMetrics::FileFormatDescriptor>

Contains information about a source file's formatting.


=head2 HistoricalDataPathList => ArrayRef[Str|Undef]

A list of paths to the historical data files.


=head2 RoleArn => Str

The ARN of an IAM role that has read and write access permissions to
the source S3 bucket.


=head2 TemplatedPathList => ArrayRef[Str|Undef]

A list of templated paths to the source files.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LookoutMetrics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

