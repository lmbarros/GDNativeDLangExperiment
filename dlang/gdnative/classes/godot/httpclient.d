module godot.httpclient;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.reference;
import godot.streampeer;
@GodotBaseClass struct HTTPClient
{
	static immutable string _GODOT_internal_name = "HTTPClient";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in HTTPClient other) const { return _godot_object.ptr is other._godot_object.ptr; }
	HTTPClient opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(HTTPClient, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit HTTPClient");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : HTTPClient) || staticIndexOf!(HTTPClient, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend HTTPClient");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static HTTPClient _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("HTTPClient");
		if(constructor is null) return typeof(this).init;
		return cast(HTTPClient)(constructor());
	}
	enum int RESPONSE_NOT_ACCEPTABLE = 406;
	enum int RESPONSE_MOVED_PERMANENTLY = 301;
	enum int RESPONSE_CONTINUE = 100;
	enum int RESPONSE_BAD_GATEWAY = 502;
	enum int RESPONSE_UNAUTHORIZED = 401;
	enum int RESPONSE_SEE_OTHER = 303;
	enum int STATUS_DISCONNECTED = 0;
	enum int STATUS_CONNECTION_ERROR = 8;
	enum int METHOD_CONNECT = 7;
	enum int RESPONSE_LOCKED = 423;
	enum int RESPONSE_METHOD_NOT_ALLOWED = 405;
	enum int RESPONSE_INTERNAL_SERVER_ERROR = 500;
	enum int RESPONSE_NON_AUTHORITATIVE_INFORMATION = 203;
	enum int RESPONSE_OK = 200;
	enum int RESPONSE_REQUEST_URI_TOO_LONG = 414;
	enum int RESPONSE_INSUFFICIENT_STORAGE = 507;
	enum int RESPONSE_FOUND = 302;
	enum int METHOD_MAX = 8;
	enum int RESPONSE_CONFLICT = 409;
	enum int RESPONSE_BAD_REQUEST = 400;
	enum int RESPONSE_FORBIDDEN = 403;
	enum int RESPONSE_PAYMENT_REQUIRED = 402;
	enum int STATUS_REQUESTING = 6;
	enum int RESPONSE_REQUEST_ENTITY_TOO_LARGE = 413;
	enum int RESPONSE_ACCEPTED = 202;
	enum int STATUS_RESOLVING = 1;
	enum int RESPONSE_USE_PROXY = 305;
	enum int RESPONSE_HTTP_VERSION_NOT_SUPPORTED = 505;
	enum int RESPONSE_REQUEST_TIMEOUT = 408;
	enum int METHOD_OPTIONS = 5;
	enum int RESPONSE_SERVICE_UNAVAILABLE = 503;
	enum int RESPONSE_PRECONDITION_FAILED = 412;
	enum int METHOD_PUT = 3;
	enum int RESPONSE_PROXY_AUTHENTICATION_REQUIRED = 407;
	enum int METHOD_GET = 0;
	enum int METHOD_TRACE = 6;
	enum int STATUS_SSL_HANDSHAKE_ERROR = 9;
	enum int RESPONSE_GATEWAY_TIMEOUT = 504;
	enum int RESPONSE_RESET_CONTENT = 205;
	enum int RESPONSE_PARTIAL_CONTENT = 206;
	enum int RESPONSE_EXPECTATION_FAILED = 417;
	enum int RESPONSE_FAILED_DEPENDENCY = 424;
	enum int RESPONSE_MULTIPLE_CHOICES = 300;
	enum int RESPONSE_UNSUPPORTED_MEDIA_TYPE = 415;
	enum int METHOD_DELETE = 4;
	enum int RESPONSE_CREATED = 201;
	enum int RESPONSE_MULTI_STATUS = 207;
	enum int STATUS_CONNECTED = 5;
	enum int METHOD_HEAD = 1;
	enum int STATUS_CONNECTING = 3;
	enum int RESPONSE_LENGTH_REQUIRED = 411;
	enum int RESPONSE_UNPROCESSABLE_ENTITY = 422;
	enum int STATUS_CANT_RESOLVE = 2;
	enum int RESPONSE_NO_CONTENT = 204;
	enum int RESPONSE_NOT_MODIFIED = 304;
	enum int RESPONSE_REQUESTED_RANGE_NOT_SATISFIABLE = 416;
	enum int METHOD_POST = 2;
	enum int RESPONSE_TEMPORARY_REDIRECT = 307;
	enum int RESPONSE_UPGRADE_REQUIRED = 426;
	enum int RESPONSE_PROCESSING = 102;
	enum int STATUS_BODY = 7;
	enum int RESPONSE_NOT_IMPLEMENTED = 501;
	enum int RESPONSE_SWITCHING_PROTOCOLS = 101;
	enum int RESPONSE_GONE = 410;
	enum int RESPONSE_IM_USED = 226;
	enum int RESPONSE_NOT_FOUND = 404;
	enum int RESPONSE_NOT_EXTENDED = 510;
	enum int STATUS_CANT_CONNECT = 4;
	GodotError connect_to_host(in String host, in int port, in bool use_ssl = false, in bool verify_host = true)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("HTTPClient", "connect_to_host");
		GodotError _GODOT_ret = GodotError.init;
		const(void*)[4] _GODOT_args = [cast(void*)(&host), cast(void*)(&port), cast(void*)(&use_ssl), cast(void*)(&verify_host), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_connection(in StreamPeer connection)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("HTTPClient", "set_connection");
		const(void*)[1] _GODOT_args = [cast(void*)(connection), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	StreamPeer get_connection() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("HTTPClient", "get_connection");
		StreamPeer _GODOT_ret = StreamPeer.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int request_raw(in int method, in String url, in PoolStringArray headers, in PoolByteArray _body)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("HTTPClient", "request_raw");
		int _GODOT_ret = int.init;
		const(void*)[4] _GODOT_args = [cast(void*)(&method), cast(void*)(&url), cast(void*)(&headers), cast(void*)(&_body), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int request(in int method, in String url, in PoolStringArray headers, in String _body = String.init)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("HTTPClient", "request");
		int _GODOT_ret = int.init;
		const(void*)[4] _GODOT_args = [cast(void*)(&method), cast(void*)(&url), cast(void*)(&headers), cast(void*)(&_body), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int send_body_text(in String _body)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("HTTPClient", "send_body_text");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&_body), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int send_body_data(in PoolByteArray _body)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("HTTPClient", "send_body_data");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&_body), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void close()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("HTTPClient", "close");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	bool has_response() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("HTTPClient", "has_response");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool is_response_chunked() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("HTTPClient", "is_response_chunked");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_response_code() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("HTTPClient", "get_response_code");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	PoolStringArray get_response_headers()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("HTTPClient", "get_response_headers");
		PoolStringArray _GODOT_ret = PoolStringArray.empty;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Dictionary get_response_headers_as_dictionary()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("HTTPClient", "get_response_headers_as_dictionary");
		Dictionary _GODOT_ret = Dictionary.empty_dictionary;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_response_body_length() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("HTTPClient", "get_response_body_length");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	PoolByteArray read_response_body_chunk()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("HTTPClient", "read_response_body_chunk");
		PoolByteArray _GODOT_ret = PoolByteArray.empty;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_read_chunk_size(in int bytes)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("HTTPClient", "set_read_chunk_size");
		const(void*)[1] _GODOT_args = [cast(void*)(&bytes), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_blocking_mode(in bool enabled)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("HTTPClient", "set_blocking_mode");
		const(void*)[1] _GODOT_args = [cast(void*)(&enabled), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_blocking_mode_enabled() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("HTTPClient", "is_blocking_mode_enabled");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_status() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("HTTPClient", "get_status");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	GodotError poll()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("HTTPClient", "poll");
		GodotError _GODOT_ret = GodotError.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String query_string_from_dict(in Dictionary fields)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("HTTPClient", "query_string_from_dict");
		String _GODOT_ret = String.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&fields), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
