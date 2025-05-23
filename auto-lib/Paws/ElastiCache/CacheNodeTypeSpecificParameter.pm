# Generated by default/object.tt
package Paws::ElastiCache::CacheNodeTypeSpecificParameter;
  use Moose;
  has AllowedValues => (is => 'ro', isa => 'Str');
  has CacheNodeTypeSpecificValues => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::CacheNodeTypeSpecificValue]', request_name => 'CacheNodeTypeSpecificValue', traits => ['NameInRequest']);
  has ChangeType => (is => 'ro', isa => 'Str');
  has DataType => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has IsModifiable => (is => 'ro', isa => 'Bool');
  has MinimumEngineVersion => (is => 'ro', isa => 'Str');
  has ParameterName => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CacheNodeTypeSpecificParameter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElastiCache::CacheNodeTypeSpecificParameter object:

  $service_obj->Method(Att1 => { AllowedValues => $value, ..., Source => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElastiCache::CacheNodeTypeSpecificParameter object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowedValues

=head1 DESCRIPTION

A parameter that has a different value for each cache node type it is
applied to. For example, in a Valkey or Redis OSS cluster, a
C<cache.m1.large> cache node type would have a larger C<maxmemory>
value than a C<cache.m1.small> type.

=head1 ATTRIBUTES


=head2 AllowedValues => Str

The valid range of values for the parameter.


=head2 CacheNodeTypeSpecificValues => ArrayRef[L<Paws::ElastiCache::CacheNodeTypeSpecificValue>]

A list of cache node types and their corresponding values for this
parameter.


=head2 ChangeType => Str

Indicates whether a change to the parameter is applied immediately or
requires a reboot for the change to be applied. You can force a reboot
or wait until the next maintenance window's reboot. For more
information, see Rebooting a Cluster
(https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Clusters.Rebooting.html).


=head2 DataType => Str

The valid data type for the parameter.


=head2 Description => Str

A description of the parameter.


=head2 IsModifiable => Bool

Indicates whether (C<true>) or not (C<false>) the parameter can be
modified. Some parameters have security or operational implications
that prevent them from being changed.


=head2 MinimumEngineVersion => Str

The earliest cache engine version to which the parameter can apply.


=head2 ParameterName => Str

The name of the parameter.


=head2 Source => Str

The source of the parameter value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

