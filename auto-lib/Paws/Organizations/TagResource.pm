
package Paws::Organizations::TagResource;
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Organizations::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::TagResource - Arguments for method TagResource on L<Paws::Organizations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<AWS Organizations|Paws::Organizations> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $organizations = Paws->service('Organizations');
    $organizations->TagResource(
      ResourceId => 'MyTaggableResourceId',
      Tags       => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/organizations/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceId => Str

The ID of the resource to add a tag to.

You can specify any of the following taggable resources.

=over

=item *

Amazon Web Services account E<ndash> specify the account ID number.

=item *

Organizational unit E<ndash> specify the OU ID that begins with C<ou->
and looks similar to: C<ou-I<1a2b-34uvwxyz>>

=item *

Root E<ndash> specify the root ID that begins with C<r-> and looks
similar to: C<r-I<1a2b>>

=item *

Policy E<ndash> specify the policy ID that begins with C<p-> andlooks
similar to: C<p-I<12abcdefg3>>

=back




=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::Organizations::Tag>]

A list of tags to add to the specified resource.

For each tag in the list, you must specify both a tag key and a value.
The value can be an empty string, but you can't set it to C<null>.

If any one of the tags is not valid or if you exceed the maximum
allowed number of tags for a resource, then the entire request fails.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

