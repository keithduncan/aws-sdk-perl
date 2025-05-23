# Generated by default/object.tt
package Paws::ResourceExplorer2::ManagedView;
  use Moose;
  has Filters => (is => 'ro', isa => 'Paws::ResourceExplorer2::SearchFilter');
  has IncludedProperties => (is => 'ro', isa => 'ArrayRef[Paws::ResourceExplorer2::IncludedProperty]');
  has LastUpdatedAt => (is => 'ro', isa => 'Str');
  has ManagedViewArn => (is => 'ro', isa => 'Str');
  has ManagedViewName => (is => 'ro', isa => 'Str');
  has Owner => (is => 'ro', isa => 'Str');
  has ResourcePolicy => (is => 'ro', isa => 'Str');
  has Scope => (is => 'ro', isa => 'Str');
  has TrustedService => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceExplorer2::ManagedView

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ResourceExplorer2::ManagedView object:

  $service_obj->Method(Att1 => { Filters => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ResourceExplorer2::ManagedView object:

  $result = $service_obj->Method(...);
  $result->Att1->Filters

=head1 DESCRIPTION

An Amazon Web Services-managed view is how other Amazon Web Services
services can access resource information indexed by Resource Explorer
for your Amazon Web Services account or organization with your consent.
For more information, see Managed views
(https://docs.aws.amazon.com/resource-explorer/latest/userguide/aws-managed-views.html).

=head1 ATTRIBUTES


=head2 Filters => L<Paws::ResourceExplorer2::SearchFilter>




=head2 IncludedProperties => ArrayRef[L<Paws::ResourceExplorer2::IncludedProperty>]

A structure that contains additional information about the managed
view.


=head2 LastUpdatedAt => Str

The date and time when this managed view was last modified.


=head2 ManagedViewArn => Str

The Amazon resource name (ARN)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the managed view.


=head2 ManagedViewName => Str

The name of the managed view.


=head2 Owner => Str

The Amazon Web Services account that owns this managed view.


=head2 ResourcePolicy => Str

The resource policy that defines access to the managed view. To learn
more about this policy, review Managed views
(https://docs.aws.amazon.com/resource-explorer/latest/userguide/aws-managed-views.html).


=head2 Scope => Str

An Amazon resource name (ARN)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of an Amazon Web Services account or organization that specifies
whether this managed view includes resources from only the specified
Amazon Web Services account or all accounts in the specified
organization.


=head2 TrustedService => Str

The service principal of the Amazon Web Services service that created
and manages the managed view.


=head2 Version => Str

The version of the managed view.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ResourceExplorer2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

