# Generated by default/object.tt
package Paws::ElastiCache::DataStorage;
  use Moose;
  has Maximum => (is => 'ro', isa => 'Int');
  has Minimum => (is => 'ro', isa => 'Int');
  has Unit => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DataStorage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElastiCache::DataStorage object:

  $service_obj->Method(Att1 => { Maximum => $value, ..., Unit => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElastiCache::DataStorage object:

  $result = $service_obj->Method(...);
  $result->Att1->Maximum

=head1 DESCRIPTION

The data storage limit.

=head1 ATTRIBUTES


=head2 Maximum => Int

The upper limit for data storage the cache is set to use.


=head2 Minimum => Int

The lower limit for data storage the cache is set to use.


=head2 B<REQUIRED> Unit => Str

The unit that the storage is measured in, in GB.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

