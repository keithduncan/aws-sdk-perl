# Generated by default/object.tt
package Paws::S3Control::StorageLensGroupFilter;
  use Moose;
  has And => (is => 'ro', isa => 'Paws::S3Control::StorageLensGroupAndOperator');
  has MatchAnyPrefix => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'Prefix', traits => ['NameInRequest']);
  has MatchAnySuffix => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'Suffix', traits => ['NameInRequest']);
  has MatchAnyTag => (is => 'ro', isa => 'ArrayRef[Paws::S3Control::S3Tag]', request_name => 'Tag', traits => ['NameInRequest']);
  has MatchObjectAge => (is => 'ro', isa => 'Paws::S3Control::MatchObjectAge');
  has MatchObjectSize => (is => 'ro', isa => 'Paws::S3Control::MatchObjectSize');
  has Or => (is => 'ro', isa => 'Paws::S3Control::StorageLensGroupOrOperator');

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::StorageLensGroupFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3Control::StorageLensGroupFilter object:

  $service_obj->Method(Att1 => { And => $value, ..., Or => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3Control::StorageLensGroupFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->And

=head1 DESCRIPTION

The filter element sets the criteria for the Storage Lens group data
that is displayed. For multiple filter conditions, the C<AND> or C<OR>
logical operator is used.

=head1 ATTRIBUTES


=head2 And => L<Paws::S3Control::StorageLensGroupAndOperator>

A logical operator that allows multiple filter conditions to be joined
for more complex comparisons of Storage Lens group data. Objects must
match all of the listed filter conditions that are joined by the C<And>
logical operator. Only one of each filter condition is allowed.


=head2 MatchAnyPrefix => ArrayRef[Str|Undef]

Contains a list of prefixes. At least one prefix must be specified. Up
to 10 prefixes are allowed.


=head2 MatchAnySuffix => ArrayRef[Str|Undef]

Contains a list of suffixes. At least one suffix must be specified. Up
to 10 suffixes are allowed.


=head2 MatchAnyTag => ArrayRef[L<Paws::S3Control::S3Tag>]

Contains the list of S3 object tags. At least one object tag must be
specified. Up to 10 object tags are allowed.


=head2 MatchObjectAge => L<Paws::S3Control::MatchObjectAge>

Contains C<DaysGreaterThan> and C<DaysLessThan> to define the object
age range (minimum and maximum number of days).


=head2 MatchObjectSize => L<Paws::S3Control::MatchObjectSize>

Contains C<BytesGreaterThan> and C<BytesLessThan> to define the object
size range (minimum and maximum number of Bytes).


=head2 Or => L<Paws::S3Control::StorageLensGroupOrOperator>

A single logical operator that allows multiple filter conditions to be
joined. Objects can match any of the listed filter conditions, which
are joined by the C<Or> logical operator. Only one of each filter
condition is allowed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

