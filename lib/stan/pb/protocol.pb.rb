# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: pb/protocol.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "STAN.Protocol.PubMsg" do
    optional :clientID, :string, 1
    optional :guid, :string, 2
    optional :subject, :string, 3
    optional :reply, :string, 4
    optional :data, :bytes, 5
    optional :sha256, :bytes, 10
  end
  add_message "STAN.Protocol.PubAck" do
    optional :guid, :string, 1
    optional :error, :string, 2
  end
  add_message "STAN.Protocol.MsgProto" do
    optional :sequence, :uint64, 1
    optional :subject, :string, 2
    optional :reply, :string, 3
    optional :data, :bytes, 4
    optional :timestamp, :int64, 5
    optional :redelivered, :bool, 6
    optional :CRC32, :uint32, 10
  end
  add_message "STAN.Protocol.Ack" do
    optional :subject, :string, 1
    optional :sequence, :uint64, 2
  end
  add_message "STAN.Protocol.ConnectRequest" do
    optional :clientID, :string, 1
    optional :heartbeatInbox, :string, 2
  end
  add_message "STAN.Protocol.ConnectResponse" do
    optional :pubPrefix, :string, 1
    optional :subRequests, :string, 2
    optional :unsubRequests, :string, 3
    optional :closeRequests, :string, 4
    optional :error, :string, 5
    optional :subCloseRequests, :string, 6
    optional :publicKey, :string, 100
  end
  add_message "STAN.Protocol.SubscriptionRequest" do
    optional :clientID, :string, 1
    optional :subject, :string, 2
    optional :qGroup, :string, 3
    optional :inbox, :string, 4
    optional :maxInFlight, :int32, 5
    optional :ackWaitInSecs, :int32, 6
    optional :durableName, :string, 7
    optional :startPosition, :enum, 10, "STAN.Protocol.StartPosition"
    optional :startSequence, :uint64, 11
    optional :startTimeDelta, :int64, 12
  end
  add_message "STAN.Protocol.SubscriptionResponse" do
    optional :ackInbox, :string, 2
    optional :error, :string, 3
  end
  add_message "STAN.Protocol.UnsubscribeRequest" do
    optional :clientID, :string, 1
    optional :subject, :string, 2
    optional :inbox, :string, 3
    optional :durableName, :string, 4
  end
  add_message "STAN.Protocol.SubscriptionCloseRequest" do
    optional :clientID, :string, 1
    optional :subject, :string, 2
    optional :inbox, :string, 3
  end
  add_message "STAN.Protocol.CloseRequest" do
    optional :clientID, :string, 1
  end
  add_message "STAN.Protocol.CloseResponse" do
    optional :error, :string, 1
  end
  add_enum "STAN.Protocol.StartPosition" do
    value :NewOnly, 0
    value :LastReceived, 1
    value :TimeDeltaStart, 2
    value :SequenceStart, 3
    value :First, 4
  end
end

module STAN
  module Protocol
    PubMsg = Google::Protobuf::DescriptorPool.generated_pool.lookup("STAN.Protocol.PubMsg").msgclass
    PubAck = Google::Protobuf::DescriptorPool.generated_pool.lookup("STAN.Protocol.PubAck").msgclass
    MsgProto = Google::Protobuf::DescriptorPool.generated_pool.lookup("STAN.Protocol.MsgProto").msgclass
    Ack = Google::Protobuf::DescriptorPool.generated_pool.lookup("STAN.Protocol.Ack").msgclass
    ConnectRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("STAN.Protocol.ConnectRequest").msgclass
    ConnectResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("STAN.Protocol.ConnectResponse").msgclass
    SubscriptionRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("STAN.Protocol.SubscriptionRequest").msgclass
    SubscriptionResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("STAN.Protocol.SubscriptionResponse").msgclass
    UnsubscribeRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("STAN.Protocol.UnsubscribeRequest").msgclass
    SubscriptionCloseRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("STAN.Protocol.SubscriptionCloseRequest").msgclass
    CloseRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("STAN.Protocol.CloseRequest").msgclass
    CloseResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("STAN.Protocol.CloseResponse").msgclass
    StartPosition = Google::Protobuf::DescriptorPool.generated_pool.lookup("STAN.Protocol.StartPosition").enummodule
  end
end
