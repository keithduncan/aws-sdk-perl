# Generated by default/object.tt
package Paws::QConnect::HierarchicalChunkingConfiguration;
  use Moose;
  has LevelConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::QConnect::HierarchicalChunkingLevelConfiguration]', request_name => 'levelConfigurations', traits => ['NameInRequest'], required => 1);
  has OverlapTokens => (is => 'ro', isa => 'Int', request_name => 'overlapTokens', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::HierarchicalChunkingConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::QConnect::HierarchicalChunkingConfiguration object:

  $service_obj->Method(Att1 => { LevelConfigurations => $value, ..., OverlapTokens => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::QConnect::HierarchicalChunkingConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->LevelConfigurations

=head1 DESCRIPTION

Settings for hierarchical document chunking for a data source.
Hierarchical chunking splits documents into layers of chunks where the
first layer contains large chunks, and the second layer contains
smaller chunks derived from the first layer.

=head1 ATTRIBUTES


=head2 B<REQUIRED> LevelConfigurations => ArrayRef[L<Paws::QConnect::HierarchicalChunkingLevelConfiguration>]

Token settings for each layer.


=head2 B<REQUIRED> OverlapTokens => Int

The number of tokens to repeat across chunks in the same layer.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

