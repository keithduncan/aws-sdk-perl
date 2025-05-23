
package Paws::Rekognition::DescribeProjects;
  use Moose;
  has Features => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ProjectNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeProjects');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::DescribeProjectsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DescribeProjects - Arguments for method DescribeProjects on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeProjects on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method DescribeProjects.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeProjects.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $DescribeProjectsResponse = $rekognition->DescribeProjects(
      Features => [
        'CONTENT_MODERATION', ...    # values: CONTENT_MODERATION, CUSTOM_LABELS
      ],    # OPTIONAL
      MaxResults   => 1,                              # OPTIONAL
      NextToken    => 'MyExtendedPaginationToken',    # OPTIONAL
      ProjectNames => [
        'MyProjectName', ...                          # min: 1, max: 255
      ],    # OPTIONAL
    );

    # Results:
    my $NextToken           = $DescribeProjectsResponse->NextToken;
    my $ProjectDescriptions = $DescribeProjectsResponse->ProjectDescriptions;

    # Returns a L<Paws::Rekognition::DescribeProjectsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/DescribeProjects>

=head1 ATTRIBUTES


=head2 Features => ArrayRef[Str|Undef]

Specifies the type of customization to filter projects by. If no value
is specified, CUSTOM_LABELS is used as a default.



=head2 MaxResults => Int

The maximum number of results to return per paginated call. The largest
value you can specify is 100. If you specify a value greater than 100,
a ValidationException error occurs. The default value is 100.



=head2 NextToken => Str

If the previous response was incomplete (because there is more results
to retrieve), Rekognition returns a pagination token in the response.
You can use this pagination token to retrieve the next set of results.



=head2 ProjectNames => ArrayRef[Str|Undef]

A list of the projects that you want Rekognition to describe. If you
don't specify a value, the response includes descriptions for all the
projects in your AWS account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeProjects in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

