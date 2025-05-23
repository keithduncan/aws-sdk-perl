# Generated by default/object.tt
package Paws::Wisdom::KnowledgeBaseAssociationData;
  use Moose;
  has KnowledgeBaseArn => (is => 'ro', isa => 'Str', request_name => 'knowledgeBaseArn', traits => ['NameInRequest']);
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', request_name => 'knowledgeBaseId', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Wisdom::KnowledgeBaseAssociationData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Wisdom::KnowledgeBaseAssociationData object:

  $service_obj->Method(Att1 => { KnowledgeBaseArn => $value, ..., KnowledgeBaseId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Wisdom::KnowledgeBaseAssociationData object:

  $result = $service_obj->Method(...);
  $result->Att1->KnowledgeBaseArn

=head1 DESCRIPTION

Association information about the knowledge base.

=head1 ATTRIBUTES


=head2 KnowledgeBaseArn => Str

The Amazon Resource Name (ARN) of the knowledge base.


=head2 KnowledgeBaseId => Str

The identifier of the knowledge base. This should not be a
QUICK_RESPONSES type knowledge base if you're storing Wisdom Content
resource to it.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Wisdom>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

