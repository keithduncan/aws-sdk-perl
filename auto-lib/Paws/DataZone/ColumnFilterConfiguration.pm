# Generated by default/object.tt
package Paws::DataZone::ColumnFilterConfiguration;
  use Moose;
  has IncludedColumnNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'includedColumnNames', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ColumnFilterConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataZone::ColumnFilterConfiguration object:

  $service_obj->Method(Att1 => { IncludedColumnNames => $value, ..., IncludedColumnNames => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataZone::ColumnFilterConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->IncludedColumnNames

=head1 DESCRIPTION

The column configuration of the asset filter.

=head1 ATTRIBUTES


=head2 IncludedColumnNames => ArrayRef[Str|Undef]

Specifies whether to include column names.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

