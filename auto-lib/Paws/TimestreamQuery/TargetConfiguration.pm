# Generated by default/object.tt
package Paws::TimestreamQuery::TargetConfiguration;
  use Moose;
  has TimestreamConfiguration => (is => 'ro', isa => 'Paws::TimestreamQuery::TimestreamConfiguration', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamQuery::TargetConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::TimestreamQuery::TargetConfiguration object:

  $service_obj->Method(Att1 => { TimestreamConfiguration => $value, ..., TimestreamConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::TimestreamQuery::TargetConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->TimestreamConfiguration

=head1 DESCRIPTION

Configuration used for writing the output of a query.

=head1 ATTRIBUTES


=head2 B<REQUIRED> TimestreamConfiguration => L<Paws::TimestreamQuery::TimestreamConfiguration>

Configuration needed to write data into the Timestream database and
table.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::TimestreamQuery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

