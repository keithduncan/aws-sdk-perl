# Generated by default/object.tt
package Paws::ComputeOptimizer::EBSFilter;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'values', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::EBSFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ComputeOptimizer::EBSFilter object:

  $service_obj->Method(Att1 => { Name => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ComputeOptimizer::EBSFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Describes a filter that returns a more specific list of Amazon Elastic
Block Store (Amazon EBS) volume recommendations. Use this filter with
the GetEBSVolumeRecommendations action.

You can use C<LambdaFunctionRecommendationFilter> with the
GetLambdaFunctionRecommendations action, C<JobFilter> with the
DescribeRecommendationExportJobs action, and C<Filter> with the
GetAutoScalingGroupRecommendations and GetEC2InstanceRecommendations
actions.

=head1 ATTRIBUTES


=head2 Name => Str

The name of the filter.

Specify C<Finding> to return recommendations with a specific finding
classification (for example, C<NotOptimized>).

You can filter your Amazon EBS volume recommendations by C<tag:key> and
C<tag-key> tags.

A C<tag:key> is a key and value combination of a tag assigned to your
Amazon EBS volume recommendations. Use the tag key in the filter name
and the tag value as the filter value. For example, to find all Amazon
EBS volume recommendations that have a tag with the key of C<Owner> and
the value of C<TeamA>, specify C<tag:Owner> for the filter name and
C<TeamA> for the filter value.

A C<tag-key> is the key of a tag assigned to your Amazon EBS volume
recommendations. Use this filter to find all of your Amazon EBS volume
recommendations that have a tag with a specific key. This
doesnE<rsquo>t consider the tag value. For example, you can find your
Amazon EBS volume recommendations with a tag key value of C<Owner> or
without any tag keys assigned.


=head2 Values => ArrayRef[Str|Undef]

The value of the filter.

The valid values are C<Optimized>, or C<NotOptimized>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ComputeOptimizer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

