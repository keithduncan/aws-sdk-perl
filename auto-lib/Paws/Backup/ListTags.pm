
package Paws::Backup::ListTags;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTags');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tags/{resourceArn}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::ListTagsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::ListTags - Arguments for method ListTags on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTags on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method ListTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTags.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $ListTagsOutput = $backup->ListTags(
      ResourceArn => 'MyARN',
      MaxResults  => 1,             # OPTIONAL
      NextToken   => 'Mystring',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListTagsOutput->NextToken;
    my $Tags      = $ListTagsOutput->Tags;

    # Returns a L<Paws::Backup::ListTagsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/ListTags>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of items to be returned.



=head2 NextToken => Str

The next item following a partial list of returned items. For example,
if a request is made to return C<MaxResults> number of items,
C<NextToken> allows you to return more items in your list starting at
the location pointed to by the next token.



=head2 B<REQUIRED> ResourceArn => Str

An Amazon Resource Name (ARN) that uniquely identifies a resource. The
format of the ARN depends on the type of resource. Valid targets for
C<ListTags> are recovery points, backup plans, and backup vaults.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTags in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

