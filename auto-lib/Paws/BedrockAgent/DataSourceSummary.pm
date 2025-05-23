# Generated by default/object.tt
package Paws::BedrockAgent::DataSourceSummary;
  use Moose;
  has DataSourceId => (is => 'ro', isa => 'Str', request_name => 'dataSourceId', traits => ['NameInRequest'], required => 1);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', request_name => 'knowledgeBaseId', traits => ['NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest'], required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', request_name => 'updatedAt', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::DataSourceSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BedrockAgent::DataSourceSummary object:

  $service_obj->Method(Att1 => { DataSourceId => $value, ..., UpdatedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BedrockAgent::DataSourceSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->DataSourceId

=head1 DESCRIPTION

Contains details about a data source.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataSourceId => Str

The unique identifier of the data source.


=head2 Description => Str

The description of the data source.


=head2 B<REQUIRED> KnowledgeBaseId => Str

The unique identifier of the knowledge base to which the data source
belongs.


=head2 B<REQUIRED> Name => Str

The name of the data source.


=head2 B<REQUIRED> Status => Str

The status of the data source.


=head2 B<REQUIRED> UpdatedAt => Str

The time at which the data source was last updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

