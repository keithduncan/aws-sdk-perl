
package Paws::KinesisAnalyticsV2::CreateApplication;
  use Moose;
  has ApplicationConfiguration => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::ApplicationConfiguration');
  has ApplicationDescription => (is => 'ro', isa => 'Str');
  has ApplicationMode => (is => 'ro', isa => 'Str');
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has CloudWatchLoggingOptions => (is => 'ro', isa => 'ArrayRef[Paws::KinesisAnalyticsV2::CloudWatchLoggingOption]');
  has RuntimeEnvironment => (is => 'ro', isa => 'Str', required => 1);
  has ServiceExecutionRole => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::KinesisAnalyticsV2::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisAnalyticsV2::CreateApplicationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::CreateApplication - Arguments for method CreateApplication on L<Paws::KinesisAnalyticsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApplication on the
L<Amazon Kinesis Analytics|Paws::KinesisAnalyticsV2> service. Use the attributes of this class
as arguments to method CreateApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApplication.

=head1 SYNOPSIS

    my $kinesisanalytics = Paws->service('KinesisAnalyticsV2');
    my $CreateApplicationResponse = $kinesisanalytics->CreateApplication(
      ApplicationName          => 'MyApplicationName',
      RuntimeEnvironment       => 'SQL-1_0',
      ServiceExecutionRole     => 'MyRoleARN',
      ApplicationConfiguration => {
        ApplicationCodeConfiguration => {
          CodeContentType => 'PLAINTEXT',    # values: PLAINTEXT, ZIPFILE
          CodeContent     => {
            S3ContentLocation => {
              BucketARN     => 'MyBucketARN',        # min: 1, max: 2048
              FileKey       => 'MyFileKey',          # min: 1, max: 1024
              ObjectVersion => 'MyObjectVersion',    # max: 1024; OPTIONAL
            },    # OPTIONAL
            TextContent    => 'MyTextContent',         # max: 102400; OPTIONAL
            ZipFileContent => 'BlobZipFileContent',    # max: 52428800; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        ApplicationSnapshotConfiguration => {
          SnapshotsEnabled => 1,

        },    # OPTIONAL
        ApplicationSystemRollbackConfiguration => {
          RollbackEnabled => 1,

        },    # OPTIONAL
        EnvironmentProperties => {
          PropertyGroups => [
            {
              PropertyGroupId => 'MyId',    # min: 1, max: 50
              PropertyMap     => {
                'MyPropertyKey' => 'MyPropertyValue'
                ,    # key: min: 1, max: 2048, value: min: 1, max: 2048
              },    # min: 1, max: 50

            },
            ...
          ],    # max: 50

        },    # OPTIONAL
        FlinkApplicationConfiguration => {
          CheckpointConfiguration => {
            ConfigurationType          => 'DEFAULT',   # values: DEFAULT, CUSTOM
            CheckpointInterval         => 1,           # min: 1; OPTIONAL
            CheckpointingEnabled       => 1,
            MinPauseBetweenCheckpoints => 1,           # OPTIONAL
          },    # OPTIONAL
          MonitoringConfiguration => {
            ConfigurationType => 'DEFAULT',    # values: DEFAULT, CUSTOM
            LogLevel     => 'INFO', # values: INFO, WARN, ERROR, DEBUG; OPTIONAL
            MetricsLevel => 'APPLICATION'
            ,    # values: APPLICATION, TASK, OPERATOR, PARALLELISM; OPTIONAL
          },    # OPTIONAL
          ParallelismConfiguration => {
            ConfigurationType  => 'DEFAULT',    # values: DEFAULT, CUSTOM
            AutoScalingEnabled => 1,
            Parallelism        => 1,            # min: 1; OPTIONAL
            ParallelismPerKPU  => 1,            # min: 1; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        SqlApplicationConfiguration => {
          Inputs => [
            {
              InputSchema => {
                RecordColumns => [
                  {
                    Name    => 'MyRecordColumnName',      # min: 1, max: 256
                    SqlType => 'MyRecordColumnSqlType',   # min: 1, max: 100
                    Mapping => 'MyRecordColumnMapping',   # max: 65535; OPTIONAL
                  },
                  ...
                ],    # min: 1, max: 1000
                RecordFormat => {
                  RecordFormatType  => 'JSON',    # values: JSON, CSV
                  MappingParameters => {
                    CSVMappingParameters => {
                      RecordColumnDelimiter =>
                        'MyRecordColumnDelimiter',    # min: 1, max: 1024
                      RecordRowDelimiter =>
                        'MyRecordRowDelimiter',       # min: 1, max: 1024

                    },    # OPTIONAL
                    JSONMappingParameters => {
                      RecordRowPath => 'MyRecordRowPath',   # min: 1, max: 65535

                    },    # OPTIONAL
                  },    # OPTIONAL
                },
                RecordEncoding => 'MyRecordEncoding', # min: 5, max: 5; OPTIONAL
              },
              NamePrefix       => 'MyInAppStreamName',    # min: 1, max: 32
              InputParallelism => {
                Count => 1,    # min: 1, max: 64; OPTIONAL
              },    # OPTIONAL
              InputProcessingConfiguration => {
                InputLambdaProcessor => {
                  ResourceARN => 'MyResourceARN',    # min: 1, max: 2048

                },

              },    # OPTIONAL
              KinesisFirehoseInput => {
                ResourceARN => 'MyResourceARN',    # min: 1, max: 2048

              },    # OPTIONAL
              KinesisStreamsInput => {
                ResourceARN => 'MyResourceARN',    # min: 1, max: 2048

              },    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
          Outputs => [
            {
              DestinationSchema => {
                RecordFormatType => 'JSON',    # values: JSON, CSV

              },
              Name                  => 'MyInAppStreamName',    # min: 1, max: 32
              KinesisFirehoseOutput => {
                ResourceARN => 'MyResourceARN',    # min: 1, max: 2048

              },    # OPTIONAL
              KinesisStreamsOutput => {
                ResourceARN => 'MyResourceARN',    # min: 1, max: 2048

              },    # OPTIONAL
              LambdaOutput => {
                ResourceARN => 'MyResourceARN',    # min: 1, max: 2048

              },    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
          ReferenceDataSources => [
            {
              ReferenceSchema => {
                RecordColumns => [
                  {
                    Name    => 'MyRecordColumnName',      # min: 1, max: 256
                    SqlType => 'MyRecordColumnSqlType',   # min: 1, max: 100
                    Mapping => 'MyRecordColumnMapping',   # max: 65535; OPTIONAL
                  },
                  ...
                ],    # min: 1, max: 1000
                RecordFormat => {
                  RecordFormatType  => 'JSON',    # values: JSON, CSV
                  MappingParameters => {
                    CSVMappingParameters => {
                      RecordColumnDelimiter =>
                        'MyRecordColumnDelimiter',    # min: 1, max: 1024
                      RecordRowDelimiter =>
                        'MyRecordRowDelimiter',       # min: 1, max: 1024

                    },    # OPTIONAL
                    JSONMappingParameters => {
                      RecordRowPath => 'MyRecordRowPath',   # min: 1, max: 65535

                    },    # OPTIONAL
                  },    # OPTIONAL
                },
                RecordEncoding => 'MyRecordEncoding', # min: 5, max: 5; OPTIONAL
              },
              TableName             => 'MyInAppTableName',    # min: 1, max: 32
              S3ReferenceDataSource => {
                BucketARN => 'MyBucketARN',    # min: 1, max: 2048
                FileKey   => 'MyFileKey',      # min: 1, max: 1024
              },    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
        VpcConfigurations => [
          {
            SecurityGroupIds => [ 'MySecurityGroupId', ... ],  # min: 1, max: 5
            SubnetIds        => [ 'MySubnetId',        ... ],  # min: 1, max: 16

          },
          ...
        ],    # OPTIONAL
        ZeppelinApplicationConfiguration => {
          CatalogConfiguration => {
            GlueDataCatalogConfiguration => {
              DatabaseARN => 'MyDatabaseARN',    # min: 1, max: 2048

            },

          },    # OPTIONAL
          CustomArtifactsConfiguration => [
            {
              ArtifactType   => 'UDF',    # values: UDF, DEPENDENCY_JAR
              MavenReference => {
                ArtifactId => 'MyMavenArtifactId',    # min: 1, max: 256
                GroupId    => 'MyMavenGroupId',       # min: 1, max: 256
                Version    => 'MyMavenVersion',       # min: 1, max: 256

              },    # OPTIONAL
              S3ContentLocation => {
                BucketARN     => 'MyBucketARN',        # min: 1, max: 2048
                FileKey       => 'MyFileKey',          # min: 1, max: 1024
                ObjectVersion => 'MyObjectVersion',    # max: 1024; OPTIONAL
              },    # OPTIONAL
            },
            ...
          ],    # max: 50; OPTIONAL
          DeployAsApplicationConfiguration => {
            S3ContentLocation => {
              BucketARN => 'MyBucketARN',    # min: 1, max: 2048
              BasePath  => 'MyBasePath',     # min: 1, max: 1024; OPTIONAL
            },

          },    # OPTIONAL
          MonitoringConfiguration => {
            LogLevel => 'INFO',    # values: INFO, WARN, ERROR, DEBUG; OPTIONAL

          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      ApplicationDescription   => 'MyApplicationDescription',    # OPTIONAL
      ApplicationMode          => 'STREAMING',                   # OPTIONAL
      CloudWatchLoggingOptions => [
        {
          LogStreamARN => 'MyLogStreamARN',    # min: 1, max: 2048

        },
        ...
      ],    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ApplicationDetail = $CreateApplicationResponse->ApplicationDetail;

    # Returns a L<Paws::KinesisAnalyticsV2::CreateApplicationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics/CreateApplication>

=head1 ATTRIBUTES


=head2 ApplicationConfiguration => L<Paws::KinesisAnalyticsV2::ApplicationConfiguration>

Use this parameter to configure the application.



=head2 ApplicationDescription => Str

A summary description of the application.



=head2 ApplicationMode => Str

Use the C<STREAMING> mode to create a Managed Service for Apache Flink
application. To create a Managed Service for Apache Flink Studio
notebook, use the C<INTERACTIVE> mode.

Valid values are: C<"STREAMING">, C<"INTERACTIVE">

=head2 B<REQUIRED> ApplicationName => Str

The name of your application (for example, C<sample-app>).



=head2 CloudWatchLoggingOptions => ArrayRef[L<Paws::KinesisAnalyticsV2::CloudWatchLoggingOption>]

Use this parameter to configure an Amazon CloudWatch log stream to
monitor application configuration errors.



=head2 B<REQUIRED> RuntimeEnvironment => Str

The runtime environment for the application.

Valid values are: C<"SQL-1_0">, C<"FLINK-1_6">, C<"FLINK-1_8">, C<"ZEPPELIN-FLINK-1_0">, C<"FLINK-1_11">, C<"FLINK-1_13">, C<"ZEPPELIN-FLINK-2_0">, C<"FLINK-1_15">, C<"ZEPPELIN-FLINK-3_0">, C<"FLINK-1_18">, C<"FLINK-1_19">, C<"FLINK-1_20">

=head2 B<REQUIRED> ServiceExecutionRole => Str

The IAM role used by the application to access Kinesis data streams,
Kinesis Data Firehose delivery streams, Amazon S3 objects, and other
external resources.



=head2 Tags => ArrayRef[L<Paws::KinesisAnalyticsV2::Tag>]

A list of one or more tags to assign to the application. A tag is a
key-value pair that identifies an application. Note that the maximum
number of application tags includes system tags. The maximum number of
user-defined application tags is 50. For more information, see Using
Tagging
(https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApplication in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

