# Generated by default/object.tt
package Paws::Kendra::SalesforceCustomKnowledgeArticleTypeConfiguration;
  use Moose;
  has DocumentDataFieldName => (is => 'ro', isa => 'Str', required => 1);
  has DocumentTitleFieldName => (is => 'ro', isa => 'Str');
  has FieldMappings => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::DataSourceToIndexFieldMapping]');
  has Name => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::SalesforceCustomKnowledgeArticleTypeConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::SalesforceCustomKnowledgeArticleTypeConfiguration object:

  $service_obj->Method(Att1 => { DocumentDataFieldName => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::SalesforceCustomKnowledgeArticleTypeConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->DocumentDataFieldName

=head1 DESCRIPTION

Provides the configuration information for indexing Salesforce custom
articles.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DocumentDataFieldName => Str

The name of the field in the custom knowledge article that contains the
document data to index.


=head2 DocumentTitleFieldName => Str

The name of the field in the custom knowledge article that contains the
document title.


=head2 FieldMappings => ArrayRef[L<Paws::Kendra::DataSourceToIndexFieldMapping>]

Maps attributes or field names of the custom knowledge article to
Amazon Kendra index field names. To create custom fields, use the
C<UpdateIndex> API before you map to Salesforce fields. For more
information, see Mapping data source fields
(https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html). The
Salesforce data source field names must exist in your Salesforce custom
metadata.


=head2 B<REQUIRED> Name => Str

The name of the configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

