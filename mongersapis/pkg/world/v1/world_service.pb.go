// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.25.0-devel
// 	protoc        v3.12.4
// source: apis/world/v1/world_service.proto

package v1

import (
	proto "github.com/golang/protobuf/proto"
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

// This is a compile-time assertion that a sufficiently up-to-date version
// of the legacy proto package is being used.
const _ = proto.ProtoPackageIsVersion4

type ConnectRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	ConnectType string `protobuf:"bytes,1,opt,name=connect_type,json=connectType,proto3" json:"connect_type,omitempty"` // "play" or "observe"
}

func (x *ConnectRequest) Reset() {
	*x = ConnectRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_apis_world_v1_world_service_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ConnectRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ConnectRequest) ProtoMessage() {}

func (x *ConnectRequest) ProtoReflect() protoreflect.Message {
	mi := &file_apis_world_v1_world_service_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ConnectRequest.ProtoReflect.Descriptor instead.
func (*ConnectRequest) Descriptor() ([]byte, []int) {
	return file_apis_world_v1_world_service_proto_rawDescGZIP(), []int{0}
}

func (x *ConnectRequest) GetConnectType() string {
	if x != nil {
		return x.ConnectType
	}
	return ""
}

type ConnectResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Approved bool `protobuf:"varint,1,opt,name=approved,proto3" json:"approved,omitempty"`
}

func (x *ConnectResponse) Reset() {
	*x = ConnectResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_apis_world_v1_world_service_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ConnectResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ConnectResponse) ProtoMessage() {}

func (x *ConnectResponse) ProtoReflect() protoreflect.Message {
	mi := &file_apis_world_v1_world_service_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ConnectResponse.ProtoReflect.Descriptor instead.
func (*ConnectResponse) Descriptor() ([]byte, []int) {
	return file_apis_world_v1_world_service_proto_rawDescGZIP(), []int{1}
}

func (x *ConnectResponse) GetApproved() bool {
	if x != nil {
		return x.Approved
	}
	return false
}

// ClientPlayMessage are messages sent by the clients to the server
type ClientPlayMessage struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields
}

func (x *ClientPlayMessage) Reset() {
	*x = ClientPlayMessage{}
	if protoimpl.UnsafeEnabled {
		mi := &file_apis_world_v1_world_service_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ClientPlayMessage) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ClientPlayMessage) ProtoMessage() {}

func (x *ClientPlayMessage) ProtoReflect() protoreflect.Message {
	mi := &file_apis_world_v1_world_service_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ClientPlayMessage.ProtoReflect.Descriptor instead.
func (*ClientPlayMessage) Descriptor() ([]byte, []int) {
	return file_apis_world_v1_world_service_proto_rawDescGZIP(), []int{2}
}

// ServerPlayMessage are messages sent from the server to the clients
type ServerPlayMessage struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields
}

func (x *ServerPlayMessage) Reset() {
	*x = ServerPlayMessage{}
	if protoimpl.UnsafeEnabled {
		mi := &file_apis_world_v1_world_service_proto_msgTypes[3]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ServerPlayMessage) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ServerPlayMessage) ProtoMessage() {}

func (x *ServerPlayMessage) ProtoReflect() protoreflect.Message {
	mi := &file_apis_world_v1_world_service_proto_msgTypes[3]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ServerPlayMessage.ProtoReflect.Descriptor instead.
func (*ServerPlayMessage) Descriptor() ([]byte, []int) {
	return file_apis_world_v1_world_service_proto_rawDescGZIP(), []int{3}
}

type World struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	WorldId     string `protobuf:"bytes,1,opt,name=world_id,json=worldId,proto3" json:"world_id,omitempty"`
	WorldName   string `protobuf:"bytes,2,opt,name=world_name,json=worldName,proto3" json:"world_name,omitempty"`
	PlayerCount int32  `protobuf:"varint,10,opt,name=player_count,json=playerCount,proto3" json:"player_count,omitempty"`
}

func (x *World) Reset() {
	*x = World{}
	if protoimpl.UnsafeEnabled {
		mi := &file_apis_world_v1_world_service_proto_msgTypes[4]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *World) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*World) ProtoMessage() {}

func (x *World) ProtoReflect() protoreflect.Message {
	mi := &file_apis_world_v1_world_service_proto_msgTypes[4]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use World.ProtoReflect.Descriptor instead.
func (*World) Descriptor() ([]byte, []int) {
	return file_apis_world_v1_world_service_proto_rawDescGZIP(), []int{4}
}

func (x *World) GetWorldId() string {
	if x != nil {
		return x.WorldId
	}
	return ""
}

func (x *World) GetWorldName() string {
	if x != nil {
		return x.WorldName
	}
	return ""
}

func (x *World) GetPlayerCount() int32 {
	if x != nil {
		return x.PlayerCount
	}
	return 0
}

type Player struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	PlayerId   string `protobuf:"bytes,1,opt,name=player_id,json=playerId,proto3" json:"player_id,omitempty"`
	PlayerName string `protobuf:"bytes,2,opt,name=player_name,json=playerName,proto3" json:"player_name,omitempty"`
}

func (x *Player) Reset() {
	*x = Player{}
	if protoimpl.UnsafeEnabled {
		mi := &file_apis_world_v1_world_service_proto_msgTypes[5]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Player) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Player) ProtoMessage() {}

func (x *Player) ProtoReflect() protoreflect.Message {
	mi := &file_apis_world_v1_world_service_proto_msgTypes[5]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Player.ProtoReflect.Descriptor instead.
func (*Player) Descriptor() ([]byte, []int) {
	return file_apis_world_v1_world_service_proto_rawDescGZIP(), []int{5}
}

func (x *Player) GetPlayerId() string {
	if x != nil {
		return x.PlayerId
	}
	return ""
}

func (x *Player) GetPlayerName() string {
	if x != nil {
		return x.PlayerName
	}
	return ""
}

type Empty struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields
}

func (x *Empty) Reset() {
	*x = Empty{}
	if protoimpl.UnsafeEnabled {
		mi := &file_apis_world_v1_world_service_proto_msgTypes[6]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Empty) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Empty) ProtoMessage() {}

func (x *Empty) ProtoReflect() protoreflect.Message {
	mi := &file_apis_world_v1_world_service_proto_msgTypes[6]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Empty.ProtoReflect.Descriptor instead.
func (*Empty) Descriptor() ([]byte, []int) {
	return file_apis_world_v1_world_service_proto_rawDescGZIP(), []int{6}
}

var File_apis_world_v1_world_service_proto protoreflect.FileDescriptor

var file_apis_world_v1_world_service_proto_rawDesc = []byte{
	0x0a, 0x21, 0x61, 0x70, 0x69, 0x73, 0x2f, 0x77, 0x6f, 0x72, 0x6c, 0x64, 0x2f, 0x76, 0x31, 0x2f,
	0x77, 0x6f, 0x72, 0x6c, 0x64, 0x5f, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x2e, 0x70, 0x72,
	0x6f, 0x74, 0x6f, 0x12, 0x02, 0x76, 0x31, 0x22, 0x33, 0x0a, 0x0e, 0x43, 0x6f, 0x6e, 0x6e, 0x65,
	0x63, 0x74, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x21, 0x0a, 0x0c, 0x63, 0x6f, 0x6e,
	0x6e, 0x65, 0x63, 0x74, 0x5f, 0x74, 0x79, 0x70, 0x65, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52,
	0x0b, 0x63, 0x6f, 0x6e, 0x6e, 0x65, 0x63, 0x74, 0x54, 0x79, 0x70, 0x65, 0x22, 0x2d, 0x0a, 0x0f,
	0x43, 0x6f, 0x6e, 0x6e, 0x65, 0x63, 0x74, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12,
	0x1a, 0x0a, 0x08, 0x61, 0x70, 0x70, 0x72, 0x6f, 0x76, 0x65, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28,
	0x08, 0x52, 0x08, 0x61, 0x70, 0x70, 0x72, 0x6f, 0x76, 0x65, 0x64, 0x22, 0x13, 0x0a, 0x11, 0x43,
	0x6c, 0x69, 0x65, 0x6e, 0x74, 0x50, 0x6c, 0x61, 0x79, 0x4d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65,
	0x22, 0x13, 0x0a, 0x11, 0x53, 0x65, 0x72, 0x76, 0x65, 0x72, 0x50, 0x6c, 0x61, 0x79, 0x4d, 0x65,
	0x73, 0x73, 0x61, 0x67, 0x65, 0x22, 0x64, 0x0a, 0x05, 0x57, 0x6f, 0x72, 0x6c, 0x64, 0x12, 0x19,
	0x0a, 0x08, 0x77, 0x6f, 0x72, 0x6c, 0x64, 0x5f, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09,
	0x52, 0x07, 0x77, 0x6f, 0x72, 0x6c, 0x64, 0x49, 0x64, 0x12, 0x1d, 0x0a, 0x0a, 0x77, 0x6f, 0x72,
	0x6c, 0x64, 0x5f, 0x6e, 0x61, 0x6d, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x09, 0x77,
	0x6f, 0x72, 0x6c, 0x64, 0x4e, 0x61, 0x6d, 0x65, 0x12, 0x21, 0x0a, 0x0c, 0x70, 0x6c, 0x61, 0x79,
	0x65, 0x72, 0x5f, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x18, 0x0a, 0x20, 0x01, 0x28, 0x05, 0x52, 0x0b,
	0x70, 0x6c, 0x61, 0x79, 0x65, 0x72, 0x43, 0x6f, 0x75, 0x6e, 0x74, 0x22, 0x46, 0x0a, 0x06, 0x50,
	0x6c, 0x61, 0x79, 0x65, 0x72, 0x12, 0x1b, 0x0a, 0x09, 0x70, 0x6c, 0x61, 0x79, 0x65, 0x72, 0x5f,
	0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x08, 0x70, 0x6c, 0x61, 0x79, 0x65, 0x72,
	0x49, 0x64, 0x12, 0x1f, 0x0a, 0x0b, 0x70, 0x6c, 0x61, 0x79, 0x65, 0x72, 0x5f, 0x6e, 0x61, 0x6d,
	0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0a, 0x70, 0x6c, 0x61, 0x79, 0x65, 0x72, 0x4e,
	0x61, 0x6d, 0x65, 0x22, 0x07, 0x0a, 0x05, 0x45, 0x6d, 0x70, 0x74, 0x79, 0x32, 0xd4, 0x01, 0x0a,
	0x0c, 0x57, 0x6f, 0x72, 0x6c, 0x64, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x12, 0x23, 0x0a,
	0x09, 0x57, 0x6f, 0x72, 0x6c, 0x64, 0x49, 0x6e, 0x66, 0x6f, 0x12, 0x09, 0x2e, 0x76, 0x31, 0x2e,
	0x45, 0x6d, 0x70, 0x74, 0x79, 0x1a, 0x09, 0x2e, 0x76, 0x31, 0x2e, 0x57, 0x6f, 0x72, 0x6c, 0x64,
	0x22, 0x00, 0x12, 0x34, 0x0a, 0x07, 0x43, 0x6f, 0x6e, 0x6e, 0x65, 0x63, 0x74, 0x12, 0x12, 0x2e,
	0x76, 0x31, 0x2e, 0x43, 0x6f, 0x6e, 0x6e, 0x65, 0x63, 0x74, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73,
	0x74, 0x1a, 0x13, 0x2e, 0x76, 0x31, 0x2e, 0x43, 0x6f, 0x6e, 0x6e, 0x65, 0x63, 0x74, 0x52, 0x65,
	0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x22, 0x00, 0x12, 0x3a, 0x0a, 0x04, 0x50, 0x6c, 0x61, 0x79,
	0x12, 0x15, 0x2e, 0x76, 0x31, 0x2e, 0x43, 0x6c, 0x69, 0x65, 0x6e, 0x74, 0x50, 0x6c, 0x61, 0x79,
	0x4d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x1a, 0x15, 0x2e, 0x76, 0x31, 0x2e, 0x53, 0x65, 0x72,
	0x76, 0x65, 0x72, 0x50, 0x6c, 0x61, 0x79, 0x4d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x22, 0x00,
	0x28, 0x01, 0x30, 0x01, 0x12, 0x2d, 0x0a, 0x05, 0x57, 0x61, 0x74, 0x63, 0x68, 0x12, 0x09, 0x2e,
	0x76, 0x31, 0x2e, 0x45, 0x6d, 0x70, 0x74, 0x79, 0x1a, 0x15, 0x2e, 0x76, 0x31, 0x2e, 0x53, 0x65,
	0x72, 0x76, 0x65, 0x72, 0x50, 0x6c, 0x61, 0x79, 0x4d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x22,
	0x00, 0x30, 0x01, 0x42, 0x06, 0x5a, 0x04, 0x2e, 0x3b, 0x76, 0x31, 0x62, 0x06, 0x70, 0x72, 0x6f,
	0x74, 0x6f, 0x33,
}

var (
	file_apis_world_v1_world_service_proto_rawDescOnce sync.Once
	file_apis_world_v1_world_service_proto_rawDescData = file_apis_world_v1_world_service_proto_rawDesc
)

func file_apis_world_v1_world_service_proto_rawDescGZIP() []byte {
	file_apis_world_v1_world_service_proto_rawDescOnce.Do(func() {
		file_apis_world_v1_world_service_proto_rawDescData = protoimpl.X.CompressGZIP(file_apis_world_v1_world_service_proto_rawDescData)
	})
	return file_apis_world_v1_world_service_proto_rawDescData
}

var file_apis_world_v1_world_service_proto_msgTypes = make([]protoimpl.MessageInfo, 7)
var file_apis_world_v1_world_service_proto_goTypes = []interface{}{
	(*ConnectRequest)(nil),    // 0: v1.ConnectRequest
	(*ConnectResponse)(nil),   // 1: v1.ConnectResponse
	(*ClientPlayMessage)(nil), // 2: v1.ClientPlayMessage
	(*ServerPlayMessage)(nil), // 3: v1.ServerPlayMessage
	(*World)(nil),             // 4: v1.World
	(*Player)(nil),            // 5: v1.Player
	(*Empty)(nil),             // 6: v1.Empty
}
var file_apis_world_v1_world_service_proto_depIdxs = []int32{
	6, // 0: v1.WorldService.WorldInfo:input_type -> v1.Empty
	0, // 1: v1.WorldService.Connect:input_type -> v1.ConnectRequest
	2, // 2: v1.WorldService.Play:input_type -> v1.ClientPlayMessage
	6, // 3: v1.WorldService.Watch:input_type -> v1.Empty
	4, // 4: v1.WorldService.WorldInfo:output_type -> v1.World
	1, // 5: v1.WorldService.Connect:output_type -> v1.ConnectResponse
	3, // 6: v1.WorldService.Play:output_type -> v1.ServerPlayMessage
	3, // 7: v1.WorldService.Watch:output_type -> v1.ServerPlayMessage
	4, // [4:8] is the sub-list for method output_type
	0, // [0:4] is the sub-list for method input_type
	0, // [0:0] is the sub-list for extension type_name
	0, // [0:0] is the sub-list for extension extendee
	0, // [0:0] is the sub-list for field type_name
}

func init() { file_apis_world_v1_world_service_proto_init() }
func file_apis_world_v1_world_service_proto_init() {
	if File_apis_world_v1_world_service_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_apis_world_v1_world_service_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ConnectRequest); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_apis_world_v1_world_service_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ConnectResponse); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_apis_world_v1_world_service_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ClientPlayMessage); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_apis_world_v1_world_service_proto_msgTypes[3].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ServerPlayMessage); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_apis_world_v1_world_service_proto_msgTypes[4].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*World); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_apis_world_v1_world_service_proto_msgTypes[5].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Player); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_apis_world_v1_world_service_proto_msgTypes[6].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Empty); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_apis_world_v1_world_service_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   7,
			NumExtensions: 0,
			NumServices:   1,
		},
		GoTypes:           file_apis_world_v1_world_service_proto_goTypes,
		DependencyIndexes: file_apis_world_v1_world_service_proto_depIdxs,
		MessageInfos:      file_apis_world_v1_world_service_proto_msgTypes,
	}.Build()
	File_apis_world_v1_world_service_proto = out.File
	file_apis_world_v1_world_service_proto_rawDesc = nil
	file_apis_world_v1_world_service_proto_goTypes = nil
	file_apis_world_v1_world_service_proto_depIdxs = nil
}
