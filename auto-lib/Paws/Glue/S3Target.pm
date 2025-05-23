# Generated by default/object.tt
package Paws::Glue::S3Target;
  use Moose;
  has ConnectionName => (is => 'ro', isa => 'Str');
  has DlqEventQueueArn => (is => 'ro', isa => 'Str');
  has EventQueueArn => (is => 'ro', isa => 'Str');
  has Exclusions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Path => (is => 'ro', isa => 'Str');
  has SampleSize => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::S3Target

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::S3Target object:

  $service_obj->Method(Att1 => { ConnectionName => $value, ..., SampleSize => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::S3Target object:

  $result = $service_obj->Method(...);
  $result->Att1->ConnectionName

=head1 DESCRIPTION

Specifies a data store in Amazon Simple Storage Service (Amazon S3).

=head1 ATTRIBUTES


=head2 ConnectionName => Str

The name of a connection which allows a job or crawler to access data
in Amazon S3 within an Amazon Virtual Private Cloud environment (Amazon
VPC).


=head2 DlqEventQueueArn => Str

A valid Amazon dead-letter SQS ARN. For example,
C<arn:aws:sqs:region:account:deadLetterQueue>.


=head2 EventQueueArn => Str

A valid Amazon SQS ARN. For example, C<arn:aws:sqs:region:account:sqs>.


=head2 Exclusions => ArrayRef[Str|Undef]

A list of glob patterns used to exclude from the crawl. For more
information, see Catalog Tables with a Crawler
(https://docs.aws.amazon.com/glue/latest/dg/add-crawler.html).


=head2 Path => Str

The path to the Amazon S3 target.


=head2 SampleSize => Int

Sets the number of files in each leaf folder to be crawled when
crawling sample files in a dataset. If not set, all the files are
crawled. A valid value is an integer between 1 and 249.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

