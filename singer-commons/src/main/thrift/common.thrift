
namespace java com.pinterest.singer.thrift.configuration

/**
 * Please check https://kafka.apache.org/documentation.html#producerconfigs for kafka configs.
 * Check https://cwiki.apache.org/confluence/display/KAFKA/Compression for more information
 * on kafka messsage compression.
 *
 * compressionCodec: the compression codec for all data generated by this producer.
 *                    Valid values are "none", "gzip" and "snappy". The kafka producer
 *                    config parameter is compression.codec.
 *
 * maxRequestSize: this is to set max.request.size in kafka producer. It is the maximum size of a
 *                 request. This is also effectively a cap on the maximum record size. Note that
 *                 the server has its own cap on record size which may be different from this.
 *
 */
struct KafkaProducerConfig {
  1: required string kafkaClusterSignature;
  2: required list<string> brokerLists;
  3: required string acks = "1";
  4: optional string partitionerClass;
  5: optional string keySerializerClass = "org.apache.kafka.common.serialization.ByteArraySerializer";
  6: optional string valueSerializerClass = "org.apache.kafka.common.serialization.ByteArraySerializer";
  7: optional string compressionType;
  8: optional i32 maxRequestSize = 1000000;
  9: optional bool sslEnabled = 0;
 10: optional map<string, string> sslSettings;
 11: optional bool transactionEnabled = 0;
 12: optional i32 transactionTimeoutMs = 6000;
 13: optional i32 retries = 5;
 14: optional i32 bufferMemory = 33554432;
 15: optional i32 lingerMs = 10;
}