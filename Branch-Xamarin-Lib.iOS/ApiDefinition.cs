using System;
using Foundation;
using ObjCRuntime;
using UIKit;

namespace IOSNativeBranch
{

	// typedef void (^callbackWithParams)(NSDictionary *, NSError *);
	delegate void callbackWithParams (NSDictionary arg0, NSError arg1);

	// typedef void (^callbackWithUrl)(NSString *, NSError *);
	delegate void callbackWithUrl (string arg0, NSError arg1);

	// typedef void (^callbackWithStatus)(BOOL, NSError *);
	delegate void callbackWithStatus (bool arg0, NSError arg1);

	// typedef void (^callbackWithList)(NSArray *, NSError *);
	delegate void callbackWithList (NSObject[] arg0, NSError arg1);

	// typedef void (^callbackWithUrlAndSpotlightIdentifier)(NSString *, NSString *, NSError *);
	delegate void callbackWithUrlAndSpotlightIdentifier (string arg0, string arg1, NSError arg2);

	// @interface BranchLinkProperties : NSObject
	[BaseType (typeof(NSObject))]
	interface BranchLinkProperties
	{
		// @property (nonatomic, strong) NSArray * tags;
		[Export ("tags", ArgumentSemantic.Strong)]
	//	[Verify (StronglyTypedNSArray)]
		NSObject[] Tags { get; set; }

		// @property (nonatomic, strong) NSString * feature;
		[Export ("feature", ArgumentSemantic.Strong)]
		string Feature { get; set; }

		// @property (nonatomic, strong) NSString * alias;
		[Export ("alias", ArgumentSemantic.Strong)]
		string Alias { get; set; }

		// @property (nonatomic, strong) NSString * channel;
		[Export ("channel", ArgumentSemantic.Strong)]
		string Channel { get; set; }

		// @property (nonatomic, strong) NSString * stage;
		[Export ("stage", ArgumentSemantic.Strong)]
		string Stage { get; set; }

		// @property (nonatomic) NSUInteger matchDuration;
		[Export ("matchDuration")]
		nuint MatchDuration { get; set; }

		// @property (nonatomic, strong) NSDictionary * controlParams;
		[Export ("controlParams", ArgumentSemantic.Strong)]
		NSDictionary ControlParams { get; set; }

		// -(void)addControlParam:(NSString *)controlParam withValue:(NSString *)value;
		[Export ("addControlParam:withValue:")]
		void AddControlParam (string controlParam, string value);

		// +(BranchLinkProperties *)getBranchLinkPropertiesFromDictionary:(NSDictionary *)dictionary;
		[Static]
		[Export ("getBranchLinkPropertiesFromDictionary:")]
		BranchLinkProperties GetBranchLinkPropertiesFromDictionary (NSDictionary dictionary);
	}

	// typedef void (^callback)();
	delegate void callback ();

	// typedef void (^shareCompletion)(NSString *, BOOL);
	delegate void shareCompletion (string arg0, bool arg1);

	// @interface BranchUniversalObject : NSObject
	[BaseType (typeof(NSObject))]
	interface BranchUniversalObject
	{
		// @property (nonatomic, strong) NSString * canonicalIdentifier;
		[Export ("canonicalIdentifier", ArgumentSemantic.Strong)]
		string CanonicalIdentifier { get; set; }

		// @property (nonatomic, strong) NSString * canonicalUrl;
		[Export ("canonicalUrl", ArgumentSemantic.Strong)]
		string CanonicalUrl { get; set; }

		// @property (nonatomic, strong) NSString * title;
		[Export ("title", ArgumentSemantic.Strong)]
		string Title { get; set; }

		// @property (nonatomic, strong) NSString * contentDescription;
		[Export ("contentDescription", ArgumentSemantic.Strong)]
		string ContentDescription { get; set; }

		// @property (nonatomic, strong) NSString * imageUrl;
		[Export ("imageUrl", ArgumentSemantic.Strong)]
		string ImageUrl { get; set; }

		// @property (nonatomic, strong) NSDictionary * metadata;
		[Export ("metadata", ArgumentSemantic.Strong)]
		NSDictionary Metadata { get; set; }

		// @property (nonatomic, strong) NSString * type;
		[Export ("type", ArgumentSemantic.Strong)]
		string Type { get; set; }

		// @property (nonatomic) ContentIndexMode contentIndexMode;
		[Export ("contentIndexMode", ArgumentSemantic.Assign)]
		ContentIndexMode ContentIndexMode { get; set; }

		// @property (nonatomic, strong) NSArray * keywords;
		[Export ("keywords", ArgumentSemantic.Strong)]
	//	[Verify (StronglyTypedNSArray)]
		NSObject[] Keywords { get; set; }

		// @property (nonatomic, strong) NSDate * expirationDate;
		[Export ("expirationDate", ArgumentSemantic.Strong)]
		NSDate ExpirationDate { get; set; }

		// @property (nonatomic, strong) NSString * spotlightIdentifier;
		[Export ("spotlightIdentifier", ArgumentSemantic.Strong)]
		string SpotlightIdentifier { get; set; }

		// -(void)addMetadataKey:(NSString *)key value:(NSString *)value;
		[Export ("addMetadataKey:value:")]
		void AddMetadataKey (string key, string value);

		// -(void)registerView;
		[Export ("registerView")]
		void RegisterView ();

		// -(void)registerViewWithCallback:(callbackWithParams)callback;
		[Export ("registerViewWithCallback:")]
		void RegisterViewWithCallback (callbackWithParams callback);

		// -(NSString *)getShortUrlWithLinkProperties:(BranchLinkProperties *)linkProperties;
		[Export ("getShortUrlWithLinkProperties:")]
		string GetShortUrlWithLinkProperties (BranchLinkProperties linkProperties);

		// -(NSString *)getShortUrlWithLinkPropertiesAndIgnoreFirstClick:(BranchLinkProperties *)linkProperties;
		[Export ("getShortUrlWithLinkPropertiesAndIgnoreFirstClick:")]
		string GetShortUrlWithLinkPropertiesAndIgnoreFirstClick (BranchLinkProperties linkProperties);

		// -(void)getShortUrlWithLinkProperties:(BranchLinkProperties *)linkProperties andCallback:(callbackWithUrl)callback;
		[Export ("getShortUrlWithLinkProperties:andCallback:")]
		void GetShortUrlWithLinkProperties (BranchLinkProperties linkProperties, callbackWithUrl callback);

		// -(UIActivityItemProvider *)getBranchActivityItemWithLinkProperties:(BranchLinkProperties *)linkProperties;
		[Export ("getBranchActivityItemWithLinkProperties:")]
		UIActivityItemProvider GetBranchActivityItemWithLinkProperties (BranchLinkProperties linkProperties);

		// -(void)showShareSheetWithShareText:(NSString *)shareText andCallback:(callback)callback __attribute__((deprecated("This method has been deprecated. Use -[showShareSheetWithShareText:completion:] instead.")));
		[Export ("showShareSheetWithShareText:andCallback:")]
		void ShowShareSheetWithShareText (string shareText, callback callback);

		// -(void)showShareSheetWithLinkProperties:(BranchLinkProperties *)linkProperties andShareText:(NSString *)shareText fromViewController:(UIViewController *)viewController andCallback:(callback)callback __attribute__((deprecated("This method has been deprecated. Use -[showShareSheetWithLinkProperties:andShareText:fromViewController:viewController:completion:] instead.")));
		[Export ("showShareSheetWithLinkProperties:andShareText:fromViewController:andCallback:")]
		void ShowShareSheetWithLinkProperties (BranchLinkProperties linkProperties, string shareText, UIViewController viewController, callback callback);

		// -(void)showShareSheetWithShareText:(NSString *)shareText completion:(shareCompletion)completion;
		[Export ("showShareSheetWithShareText:completion:")]
		void ShowShareSheetWithShareText (string shareText, shareCompletion completion);

		// -(void)showShareSheetWithLinkProperties:(BranchLinkProperties *)linkProperties andShareText:(NSString *)shareText fromViewController:(UIViewController *)viewController completion:(shareCompletion)completion;
		[Export ("showShareSheetWithLinkProperties:andShareText:fromViewController:completion:")]
		void ShowShareSheetWithLinkProperties (BranchLinkProperties linkProperties, string shareText, UIViewController viewController, shareCompletion completion);

		// -(void)showShareSheetWithLinkProperties:(BranchLinkProperties *)linkProperties andShareText:(NSString *)shareText fromViewController:(UIViewController *)viewController anchor:(UIBarButtonItem *)anchor completion:(shareCompletion)completion;
		[Export ("showShareSheetWithLinkProperties:andShareText:fromViewController:anchor:completion:")]
		void ShowShareSheetWithLinkProperties (BranchLinkProperties linkProperties, string shareText, UIViewController viewController, UIBarButtonItem anchor, shareCompletion completion);

		// -(void)listOnSpotlight;
		[Export ("listOnSpotlight")]
		void ListOnSpotlight ();

		// -(void)listOnSpotlightWithCallback:(callbackWithUrl)callback;
		[Export ("listOnSpotlightWithCallback:")]
		void ListOnSpotlightWithCallback (callbackWithUrl callback);

		// -(void)listOnSpotlightWithIdentifierCallback:(callbackWithUrlAndSpotlightIdentifier)spotlightCallback;
		[Export ("listOnSpotlightWithIdentifierCallback:")]
		void ListOnSpotlightWithIdentifierCallback (callbackWithUrlAndSpotlightIdentifier spotlightCallback);

		// +(BranchUniversalObject *)getBranchUniversalObjectFromDictionary:(NSDictionary *)dictionary;
		[Static]
		[Export ("getBranchUniversalObjectFromDictionary:")]
		BranchUniversalObject GetBranchUniversalObjectFromDictionary (NSDictionary dictionary);
	}

	// typedef void (^callbackWithBranchUniversalObject)(BranchUniversalObject *, BranchLinkProperties *, NSError *);
	delegate void callbackWithBranchUniversalObject (BranchUniversalObject arg0, BranchLinkProperties arg1, NSError arg2);

	// @protocol BranchActivityItemProviderDelegate <NSObject>
	[Protocol, Model]
	[BaseType (typeof(NSObject))]
	interface BranchActivityItemProviderDelegate
	{
		// @optional -(NSDictionary *)activityItemParamsForChannel:(NSString *)channel;
		[Export ("activityItemParamsForChannel:")]
		NSDictionary ActivityItemParamsForChannel (string channel);

		// @optional -(NSArray *)activityItemTagsForChannel:(NSString *)channel;
		[Export ("activityItemTagsForChannel:")]
	//	[Verify (StronglyTypedNSArray)]
		NSObject[] ActivityItemTagsForChannel (string channel);

		// @optional -(NSString *)activityItemFeatureForChannel:(NSString *)channel;
		[Export ("activityItemFeatureForChannel:")]
		string ActivityItemFeatureForChannel (string channel);

		// @optional -(NSString *)activityItemStageForChannel:(NSString *)channel;
		[Export ("activityItemStageForChannel:")]
		string ActivityItemStageForChannel (string channel);

		// @optional -(NSString *)activityItemAliasForChannel:(NSString *)channel;
		[Export ("activityItemAliasForChannel:")]
		string ActivityItemAliasForChannel (string channel);

		// @optional -(NSString *)activityItemOverrideChannelForChannel:(NSString *)channel;
		[Export ("activityItemOverrideChannelForChannel:")]
		string ActivityItemOverrideChannelForChannel (string channel);
	}

	// @interface BranchActivityItemProvider : UIActivityItemProvider
	[BaseType (typeof(UIActivityItemProvider))]
	interface BranchActivityItemProvider
	{
		// -(id)initWithParams:(NSDictionary *)params tags:(NSArray *)tags feature:(NSString *)feature stage:(NSString *)stage alias:(NSString *)alias delegate:(id<BranchActivityItemProviderDelegate>)delegate;
		[Export ("initWithParams:tags:feature:stage:alias:delegate:")]
	//	[Verify (StronglyTypedNSArray)]
		IntPtr Constructor (NSDictionary @params, NSObject[] tags, string feature, string stage, string alias, BranchActivityItemProviderDelegate @delegate);
	}

	// @interface BNCServerResponse : NSObject
	[BaseType (typeof(NSObject))]
	interface BNCServerResponse
	{
		// @property (nonatomic, strong) NSNumber * statusCode;
		[Export ("statusCode", ArgumentSemantic.Strong)]
		NSNumber StatusCode { get; set; }

		// @property (nonatomic, strong) id data;
		[Export ("data", ArgumentSemantic.Strong)]
		NSObject Data { get; set; }
	}

	// @interface BNCPreferenceHelper : NSObject
	[BaseType (typeof(NSObject))]
	interface BNCPreferenceHelper
	{
		// @property (nonatomic, strong) NSString * branchKey;
		[Export ("branchKey", ArgumentSemantic.Strong)]
		string BranchKey { get; set; }

		// @property (nonatomic, strong) NSString * appKey;
		[Export ("appKey", ArgumentSemantic.Strong)]
		string AppKey { get; set; }

		// @property (nonatomic, strong) NSString * lastRunBranchKey;
		[Export ("lastRunBranchKey", ArgumentSemantic.Strong)]
		string LastRunBranchKey { get; set; }

		// @property (nonatomic, strong) NSDate * lastStrongMatchDate;
		[Export ("lastStrongMatchDate", ArgumentSemantic.Strong)]
		NSDate LastStrongMatchDate { get; set; }

		// @property (nonatomic, strong) NSString * appVersion;
		[Export ("appVersion", ArgumentSemantic.Strong)]
		string AppVersion { get; set; }

		// @property (nonatomic, strong) NSString * deviceFingerprintID;
		[Export ("deviceFingerprintID", ArgumentSemantic.Strong)]
		string DeviceFingerprintID { get; set; }

		// @property (nonatomic, strong) NSString * sessionID;
		[Export ("sessionID", ArgumentSemantic.Strong)]
		string SessionID { get; set; }

		// @property (nonatomic, strong) NSString * identityID;
		[Export ("identityID", ArgumentSemantic.Strong)]
		string IdentityID { get; set; }

		// @property (nonatomic, strong) NSString * linkClickIdentifier;
		[Export ("linkClickIdentifier", ArgumentSemantic.Strong)]
		string LinkClickIdentifier { get; set; }

		// @property (nonatomic, strong) NSString * spotlightIdentifier;
		[Export ("spotlightIdentifier", ArgumentSemantic.Strong)]
		string SpotlightIdentifier { get; set; }

		// @property (nonatomic, strong) NSString * universalLinkUrl;
		[Export ("universalLinkUrl", ArgumentSemantic.Strong)]
		string UniversalLinkUrl { get; set; }

		// @property (nonatomic, strong) NSString * userUrl;
		[Export ("userUrl", ArgumentSemantic.Strong)]
		string UserUrl { get; set; }

		// @property (nonatomic, strong) NSString * userIdentity;
		[Export ("userIdentity", ArgumentSemantic.Strong)]
		string UserIdentity { get; set; }

		// @property (nonatomic, strong) NSString * sessionParams;
		[Export ("sessionParams", ArgumentSemantic.Strong)]
		string SessionParams { get; set; }

		// @property (nonatomic, strong) NSString * installParams;
		[Export ("installParams", ArgumentSemantic.Strong)]
		string InstallParams { get; set; }

		// @property (assign, nonatomic) BOOL explicitlyRequestedReferrable;
		[Export ("explicitlyRequestedReferrable")]
		bool ExplicitlyRequestedReferrable { get; set; }

		// @property (assign, nonatomic) BOOL isReferrable;
		[Export ("isReferrable")]
		bool IsReferrable { get; set; }

		// @property (assign, nonatomic) BOOL isDebug;
		[Export ("isDebug")]
		bool IsDebug { get; set; }

		// @property (assign, nonatomic) BOOL isContinuingUserActivity;
		[Export ("isContinuingUserActivity")]
		bool IsContinuingUserActivity { get; set; }

		// @property (assign, nonatomic) NSInteger retryCount;
		[Export ("retryCount")]
		nint RetryCount { get; set; }

		// @property (assign, nonatomic) NSTimeInterval retryInterval;
		[Export ("retryInterval")]
		double RetryInterval { get; set; }

		// @property (assign, nonatomic) NSTimeInterval timeout;
		[Export ("timeout")]
		double Timeout { get; set; }

		// @property (nonatomic, strong) NSString * externalIntentURI;
		[Export ("externalIntentURI", ArgumentSemantic.Strong)]
		string ExternalIntentURI { get; set; }

		// +(BNCPreferenceHelper *)preferenceHelper;
		[Static]
		[Export ("preferenceHelper")]
	//	[Verify (MethodToProperty)]
	//	BNCPreferenceHelper PreferenceHelper { get; }
		BNCPreferenceHelper PreferenceHelper ();

		// -(NSString *)getAPIBaseURL;
		[Export ("getAPIBaseURL")]
	//	[Verify (MethodToProperty)]
	//	string APIBaseURL { get; }
		string APIBaseURL ();

		// -(NSString *)getAPIURL:(NSString *)endpoint;
		[Export ("getAPIURL:")]
		string GetAPIURL (string endpoint);

		// -(NSString *)getBranchKey:(BOOL)isLive;
		[Export ("getBranchKey:")]
		string GetBranchKey (bool isLive);

		// -(void)clearUserCreditsAndCounts;
		[Export ("clearUserCreditsAndCounts")]
		void ClearUserCreditsAndCounts ();

		// -(void)clearUserCredits;
		[Export ("clearUserCredits")]
		void ClearUserCredits ();

		// -(id)getBranchUniversalLinkDomains;
		[Export ("getBranchUniversalLinkDomains")]
	//	[Verify (MethodToProperty)]
	//	NSObject BranchUniversalLinkDomains { get; }
		NSObject BranchUniversalLinkDomains ();

		// -(void)setCreditCount:(NSInteger)count;
		[Export ("setCreditCount:")]
		void SetCreditCount (nint count);

		// -(void)setCreditCount:(NSInteger)count forBucket:(NSString *)bucket;
		[Export ("setCreditCount:forBucket:")]
		void SetCreditCount (nint count, string bucket);

		// -(void)removeCreditCountForBucket:(NSString *)bucket;
		[Export ("removeCreditCountForBucket:")]
		void RemoveCreditCountForBucket (string bucket);

		// -(NSDictionary *)getCreditDictionary;
		[Export ("getCreditDictionary")]
	//	[Verify (MethodToProperty)]
	//	NSDictionary CreditDictionary { get; }
		NSDictionary CreditDictionary ();

		// -(NSInteger)getCreditCount;
		[Export ("getCreditCount")]
	//	[Verify (MethodToProperty)]
	//	nint CreditCount { get; }
		nint CreditCount ();

		// -(NSInteger)getCreditCountForBucket:(NSString *)bucket;
		[Export ("getCreditCountForBucket:")]
		nint GetCreditCountForBucket (string bucket);

		// -(void)setActionTotalCount:(NSString *)action withCount:(NSInteger)count;
		[Export ("setActionTotalCount:withCount:")]
		void SetActionTotalCount (string action, nint count);

		// -(void)setActionUniqueCount:(NSString *)action withCount:(NSInteger)count;
		[Export ("setActionUniqueCount:withCount:")]
		void SetActionUniqueCount (string action, nint count);

		// -(NSInteger)getActionTotalCount:(NSString *)action;
		[Export ("getActionTotalCount:")]
		nint GetActionTotalCount (string action);

		// -(NSInteger)getActionUniqueCount:(NSString *)action;
		[Export ("getActionUniqueCount:")]
		nint GetActionUniqueCount (string action);

		// -(void)log:(NSString *)filename line:(int)line message:(NSString *)format, ...;
		[Internal]
		[Export ("log:line:message:", IsVariadic = true)]
		void Log (string filename, int line, string format, IntPtr varArgs);
	}

	// typedef void (^BNCServerCallback)(BNCServerResponse *, NSError *);
	delegate void BNCServerCallback (BNCServerResponse arg0, NSError arg1);

	// @interface BNCServerInterface : NSObject
	[BaseType (typeof(NSObject))]
	interface BNCServerInterface
	{
		// @property (nonatomic, strong) BNCPreferenceHelper * preferenceHelper;
		[Export ("preferenceHelper", ArgumentSemantic.Strong)]
		BNCPreferenceHelper PreferenceHelper { get; set; }

		// -(BNCServerResponse *)getRequest:(NSDictionary *)params url:(NSString *)url key:(NSString *)key;
		[Export ("getRequest:url:key:")]
		BNCServerResponse GetRequest (NSDictionary @params, string url, string key);

		// -(BNCServerResponse *)getRequest:(NSDictionary *)params url:(NSString *)url key:(NSString *)key log:(BOOL)log;
		[Export ("getRequest:url:key:log:")]
		BNCServerResponse GetRequest (NSDictionary @params, string url, string key, bool log);

		// -(void)getRequest:(NSDictionary *)params url:(NSString *)url key:(NSString *)key callback:(BNCServerCallback)callback;
		[Export ("getRequest:url:key:callback:")]
		void GetRequest (NSDictionary @params, string url, string key, BNCServerCallback callback);

		// -(void)getRequest:(NSDictionary *)params url:(NSString *)url key:(NSString *)key log:(BOOL)log callback:(BNCServerCallback)callback;
		[Export ("getRequest:url:key:log:callback:")]
		void GetRequest (NSDictionary @params, string url, string key, bool log, BNCServerCallback callback);

		// -(BNCServerResponse *)postRequest:(NSDictionary *)post url:(NSString *)url key:(NSString *)key log:(BOOL)log;
		[Export ("postRequest:url:key:log:")]
		BNCServerResponse PostRequest (NSDictionary post, string url, string key, bool log);

		// -(void)postRequest:(NSDictionary *)post url:(NSString *)url key:(NSString *)key callback:(BNCServerCallback)callback;
		[Export ("postRequest:url:key:callback:")]
		void PostRequest (NSDictionary post, string url, string key, BNCServerCallback callback);

		// -(void)postRequest:(NSDictionary *)post url:(NSString *)url key:(NSString *)key log:(BOOL)log callback:(BNCServerCallback)callback;
		[Export ("postRequest:url:key:log:callback:")]
		void PostRequest (NSDictionary post, string url, string key, bool log, BNCServerCallback callback);

		// -(void)genericHTTPRequest:(NSURLRequest *)request log:(BOOL)log callback:(BNCServerCallback)callback;
		[Export ("genericHTTPRequest:log:callback:")]
		void GenericHTTPRequest (NSUrlRequest request, bool log, BNCServerCallback callback);

		// -(BNCServerResponse *)genericHTTPRequest:(NSURLRequest *)request log:(BOOL)log;
		[Export ("genericHTTPRequest:log:")]
		BNCServerResponse GenericHTTPRequest (NSUrlRequest request, bool log);
	}

	// @interface BNCServerRequest : NSObject <NSCoding>
	[BaseType (typeof(NSObject))]
	interface BNCServerRequest : INSCoding
	{
		// -(void)makeRequest:(BNCServerInterface *)serverInterface key:(NSString *)key callback:(BNCServerCallback)callback;
		[Export ("makeRequest:key:callback:")]
		void MakeRequest (BNCServerInterface serverInterface, string key, BNCServerCallback callback);

		// -(void)processResponse:(BNCServerResponse *)response error:(NSError *)error;
		[Export ("processResponse:error:")]
		void ProcessResponse (BNCServerResponse response, NSError error);
	}

	// @interface BNCServerRequestQueue : NSObject
	[BaseType (typeof(NSObject))]
	interface BNCServerRequestQueue
	{
		// @property (readonly, nonatomic) unsigned int size;
		[Export ("size")]
		uint Size { get; }

		// -(void)enqueue:(BNCServerRequest *)request;
		[Export ("enqueue:")]
		void Enqueue (BNCServerRequest request);

		// -(BNCServerRequest *)dequeue;
		[Export ("dequeue")]
	//	[Verify (MethodToProperty)]
	//	BNCServerRequest Dequeue { get; }
		BNCServerRequest Dequeue ();

		// -(BNCServerRequest *)peek;
		[Export ("peek")]
	//	[Verify (MethodToProperty)]
	//	BNCServerRequest Peek { get; }
		BNCServerRequest Peek ();

		// -(BNCServerRequest *)peekAt:(unsigned int)index;
		[Export ("peekAt:")]
		BNCServerRequest PeekAt (uint index);

		// -(void)insert:(BNCServerRequest *)request at:(unsigned int)index;
		[Export ("insert:at:")]
		void Insert (BNCServerRequest request, uint index);

		// -(BNCServerRequest *)removeAt:(unsigned int)index;
		[Export ("removeAt:")]
		BNCServerRequest RemoveAt (uint index);

		// -(void)remove:(BNCServerRequest *)request;
		[Export ("remove:")]
		void Remove (BNCServerRequest request);

		// -(void)persistEventually;
		[Export ("persistEventually")]
		void PersistEventually ();

		// -(void)persistImmediately;
		[Export ("persistImmediately")]
		void PersistImmediately ();

		// -(void)clearQueue;
		[Export ("clearQueue")]
		void ClearQueue ();

		// -(BOOL)containsInstallOrOpen;
		[Export ("containsInstallOrOpen")]
	//	[Verify (MethodToProperty)]
	//	bool ContainsInstallOrOpen { get; }
		bool ContainsInstallOrOpen ();

		// -(BOOL)containsClose;
		[Export ("containsClose")]
	//	[Verify (MethodToProperty)]
	//	bool ContainsClose { get; }
		bool ContainsClose ();

		// -(BranchOpenRequest *)moveInstallOrOpenToFront:(NSInteger)networkCount;
		[Export ("moveInstallOrOpenToFront:")]
		BranchOpenRequest MoveInstallOrOpenToFront (nint networkCount);

		// +(id)getInstance;
		[Static]
		[Export ("getInstance")]
	//	[Verify (MethodToProperty)]
	//	NSObject Instance { get; }
		NSObject Instance ();
	}

	// @interface BNCLinkData : NSObject
	[BaseType (typeof(NSObject))]
	interface BNCLinkData
	{
		// @property (nonatomic, strong) NSMutableDictionary * data;
		[Export ("data", ArgumentSemantic.Strong)]
		NSMutableDictionary Data { get; set; }

		// -(void)setupTags:(NSArray *)tags;
		[Export ("setupTags:")]
	//	[Verify (StronglyTypedNSArray)]
		void SetupTags (NSObject[] tags);

		// -(void)setupAlias:(NSString *)alias;
		[Export ("setupAlias:")]
		void SetupAlias (string alias);

		// -(void)setupType:(BranchLinkType)type;
		[Export ("setupType:")]
		void SetupType (BranchLinkType type);

		// -(void)setupChannel:(NSString *)channel;
		[Export ("setupChannel:")]
		void SetupChannel (string channel);

		// -(void)setupFeature:(NSString *)feature;
		[Export ("setupFeature:")]
		void SetupFeature (string feature);

		// -(void)setupStage:(NSString *)stage;
		[Export ("setupStage:")]
		void SetupStage (string stage);

		// -(void)setupParams:(NSDictionary *)params;
		[Export ("setupParams:")]
		void SetupParams (NSDictionary @params);

		// -(void)setupMatchDuration:(NSUInteger)duration;
		[Export ("setupMatchDuration:")]
		void SetupMatchDuration (nuint duration);

		// -(void)setupIgnoreUAString:(NSString *)ignoreUAString;
		[Export ("setupIgnoreUAString:")]
		void SetupIgnoreUAString (string ignoreUAString);
	}

	// @interface BNCLinkCache : NSObject
	[BaseType (typeof(NSObject))]
	interface BNCLinkCache
	{
		// -(void)setObject:(NSString *)anObject forKey:(BNCLinkData *)aKey;
		[Export ("setObject:forKey:")]
		void SetObject (string anObject, BNCLinkData aKey);

		// -(NSString *)objectForKey:(BNCLinkData *)aKey;
		[Export ("objectForKey:")]
		string ObjectForKey (BNCLinkData aKey);
	}

	// @protocol BranchDeepLinkingControllerCompletionDelegate <NSObject>
	[Protocol, Model]
	[BaseType (typeof(NSObject))]
	interface BranchDeepLinkingControllerCompletionDelegate
	{
		// @required -(void)deepLinkingControllerCompleted;
		[Abstract]
		[Export ("deepLinkingControllerCompleted")]
		void DeepLinkingControllerCompleted ();
	}

	// @protocol BranchDeepLinkingController <NSObject>
	[Protocol, Model]
	[BaseType (typeof(NSObject))]
	interface BranchDeepLinkingController
	{
		// @required -(void)configureControlWithData:(NSDictionary *)data;
		[Abstract]
		[Export ("configureControlWithData:")]
		void ConfigureControlWithData (NSDictionary data);

		[Wrap ("WeakDeepLinkingCompletionDelegate")]
		[NullAllowed]
		BranchDeepLinkingControllerCompletionDelegate DeepLinkingCompletionDelegate { get; set; }

		// @required @property (nonatomic, weak) id<BranchDeepLinkingControllerCompletionDelegate> _Nullable deepLinkingCompletionDelegate;
		[NullAllowed, Export ("deepLinkingCompletionDelegate", ArgumentSemantic.Weak)]
		NSObject WeakDeepLinkingCompletionDelegate { get; set; }
	}

	// @interface BranchOpenRequest : BNCServerRequest
	[BaseType (typeof(BNCServerRequest))]
	interface BranchOpenRequest
	{
		// @property (nonatomic, strong) callbackWithStatus callback;
		[Export ("callback", ArgumentSemantic.Strong)]
		callbackWithStatus Callback { get; set; }

		// -(id)initWithCallback:(callbackWithStatus)callback;
		[Export ("initWithCallback:")]
		IntPtr Constructor (callbackWithStatus callback);

		// -(id)initWithCallback:(callbackWithStatus)callback isInstall:(BOOL)isInstall;
		[Export ("initWithCallback:isInstall:")]
		IntPtr Constructor (callbackWithStatus callback, bool isInstall);
	}

	// @interface Branch : NSObject
	[BaseType (typeof(NSObject))]
	interface Branch
	{
		// +(Branch *)getInstance;
		[Static]
		[Export ("getInstance")]
	//	[Verify (MethodToProperty)]
	//	Branch Instance { get; }
		Branch Instance ();

		// +(Branch *)getTestInstance;
		[Static]
		[Export ("getTestInstance")]
	//	[Verify (MethodToProperty)]
	//	Branch TestInstance { get; }
		Branch TestInstance ();

		// +(Branch *)getInstance:(NSString *)branchKey;
		[Static]
		[Export ("getInstance:")]
		Branch GetInstance (string branchKey);

		// +(BranchActivityItemProvider *)getBranchActivityItemWithParams:(NSDictionary *)params;
		[Static]
		[Export ("getBranchActivityItemWithParams:")]
		BranchActivityItemProvider GetBranchActivityItemWithParams (NSDictionary @params);

		// +(BranchActivityItemProvider *)getBranchActivityItemWithParams:(NSDictionary *)params feature:(NSString *)feature;
		[Static]
		[Export ("getBranchActivityItemWithParams:feature:")]
		BranchActivityItemProvider GetBranchActivityItemWithParams (NSDictionary @params, string feature);

		// +(BranchActivityItemProvider *)getBranchActivityItemWithParams:(NSDictionary *)params feature:(NSString *)feature stage:(NSString *)stage;
		[Static]
		[Export ("getBranchActivityItemWithParams:feature:stage:")]
		BranchActivityItemProvider GetBranchActivityItemWithParams (NSDictionary @params, string feature, string stage);

		// +(BranchActivityItemProvider *)getBranchActivityItemWithParams:(NSDictionary *)params feature:(NSString *)feature stage:(NSString *)stage tags:(NSArray *)tags;
		[Static]
		[Export ("getBranchActivityItemWithParams:feature:stage:tags:")]
	//	[Verify (StronglyTypedNSArray)]
		BranchActivityItemProvider GetBranchActivityItemWithParams (NSDictionary @params, string feature, string stage, NSObject[] tags);

		// +(BranchActivityItemProvider *)getBranchActivityItemWithParams:(NSDictionary *)params feature:(NSString *)feature stage:(NSString *)stage tags:(NSArray *)tags alias:(NSString *)alias;
		[Static]
		[Export ("getBranchActivityItemWithParams:feature:stage:tags:alias:")]
	//	[Verify (StronglyTypedNSArray)]
		BranchActivityItemProvider GetBranchActivityItemWithParams (NSDictionary @params, string feature, string stage, NSObject[] tags, string alias);

		// +(BranchActivityItemProvider *)getBranchActivityItemWithParams:(NSDictionary *)params andFeature:(NSString *)feature andStage:(NSString *)stage andAlias:(NSString *)alias __attribute__((deprecated("Use methods without 'and'")));
		[Static]
		[Export ("getBranchActivityItemWithParams:andFeature:andStage:andAlias:")]
		BranchActivityItemProvider GetBranchActivityItemWithParams (NSDictionary @params, string feature, string stage, string alias);

		// +(BranchActivityItemProvider *)getBranchActivityItemWithParams:(NSDictionary *)params andTags:(NSArray *)tags andFeature:(NSString *)feature andStage:(NSString *)stage andAlias:(NSString *)alias __attribute__((deprecated("Use methods without 'and'")));
		[Static]
		[Export ("getBranchActivityItemWithParams:andTags:andFeature:andStage:andAlias:")]
	//	[Verify (StronglyTypedNSArray)]
		BranchActivityItemProvider GetBranchActivityItemWithParams (NSDictionary @params, NSObject[] tags, string feature, string stage, string alias);

		// +(BranchActivityItemProvider *)getBranchActivityItemWithParams:(NSDictionary *)params feature:(NSString *)feature stage:(NSString *)stage tags:(NSArray *)tags alias:(NSString *)alias delegate:(id<BranchActivityItemProviderDelegate>)delegate;
		[Static]
		[Export ("getBranchActivityItemWithParams:feature:stage:tags:alias:delegate:")]
	//	[Verify (StronglyTypedNSArray)]
		BranchActivityItemProvider GetBranchActivityItemWithParams (NSDictionary @params, string feature, string stage, NSObject[] tags, string alias, BranchActivityItemProviderDelegate @delegate);

		// -(void)initSessionWithLaunchOptions:(NSDictionary *)options;
		[Export ("initSessionWithLaunchOptions:")]
		void InitSessionWithLaunchOptions (NSDictionary options);

		// -(void)initSessionWithLaunchOptions:(NSDictionary *)options isReferrable:(BOOL)isReferrable;
		[Export ("initSessionWithLaunchOptions:isReferrable:")]
		void InitSessionWithLaunchOptions (NSDictionary options, bool isReferrable);

		// -(void)initSessionWithLaunchOptions:(NSDictionary *)options andRegisterDeepLinkHandler:(callbackWithParams)callback;
		[Export ("initSessionWithLaunchOptions:andRegisterDeepLinkHandler:")]
		void InitSessionWithLaunchOptions (NSDictionary options, callbackWithParams callback);

		// -(void)initSessionWithLaunchOptions:(NSDictionary *)options andRegisterDeepLinkHandlerUsingBranchUniversalObject:(callbackWithBranchUniversalObject)callback;
		[Export ("initSessionWithLaunchOptions:andRegisterDeepLinkHandlerUsingBranchUniversalObject:")]
		void InitSessionWithLaunchOptions (NSDictionary options, callbackWithBranchUniversalObject callback);

		// -(void)initSessionWithLaunchOptions:(NSDictionary *)options isReferrable:(BOOL)isReferrable andRegisterDeepLinkHandler:(callbackWithParams)callback;
		[Export ("initSessionWithLaunchOptions:isReferrable:andRegisterDeepLinkHandler:")]
		void InitSessionWithLaunchOptions (NSDictionary options, bool isReferrable, callbackWithParams callback);

		// -(void)initSessionWithLaunchOptions:(NSDictionary *)options isReferrable:(BOOL)isReferrable automaticallyDisplayDeepLinkController:(BOOL)automaticallyDisplayController;
		[Export ("initSessionWithLaunchOptions:isReferrable:automaticallyDisplayDeepLinkController:")]
		void InitSessionWithLaunchOptions (NSDictionary options, bool isReferrable, bool automaticallyDisplayController);

		// -(void)initSessionWithLaunchOptions:(NSDictionary *)options automaticallyDisplayDeepLinkController:(BOOL)automaticallyDisplayController isReferrable:(BOOL)isReferrable deepLinkHandler:(callbackWithParams)callback;
		[Export ("initSessionWithLaunchOptions:automaticallyDisplayDeepLinkController:isReferrable:deepLinkHandler:")]
		void InitSessionWithLaunchOptions (NSDictionary options, bool automaticallyDisplayController, bool isReferrable, callbackWithParams callback);

		// -(BOOL)handleDeepLink:(NSURL *)url;
		[Export ("handleDeepLink:")]
		bool HandleDeepLink (NSUrl url);

		// -(BOOL)continueUserActivity:(NSUserActivity *)userActivity;
		[Export ("continueUserActivity:")]
		bool ContinueUserActivity (NSUserActivity userActivity);

		// -(void)handlePushNotification:(NSDictionary *)userInfo;
		[Export ("handlePushNotification:")]
		void HandlePushNotification (NSDictionary userInfo);

		// -(void)registerDeepLinkController:(UIViewController<BranchDeepLinkingController> *)controller forKey:(NSString *)key;
		[Export ("registerDeepLinkController:forKey:")]
		void RegisterDeepLinkController (BranchDeepLinkingController controller, string key);

		// -(void)setDebug;
		[Export ("setDebug")]
		void SetDebug ();

		// -(void)setDeepLinkDebugMode:(NSDictionary *)debugParams;
		[Export ("setDeepLinkDebugMode:")]
		void SetDeepLinkDebugMode (NSDictionary debugParams);

		// -(void)setRetryInterval:(NSTimeInterval)retryInterval;
		[Export ("setRetryInterval:")]
		void SetRetryInterval (double retryInterval);

		// -(void)setMaxRetries:(NSInteger)maxRetries;
		[Export ("setMaxRetries:")]
		void SetMaxRetries (nint maxRetries);

		// -(void)setNetworkTimeout:(NSTimeInterval)timeout;
		[Export ("setNetworkTimeout:")]
		void SetNetworkTimeout (double timeout);

		// -(void)disableCookieBasedMatching;
		[Export ("disableCookieBasedMatching")]
		void DisableCookieBasedMatching ();

		// -(void)accountForFacebookSDKPreventingAppLaunch;
		[Export ("accountForFacebookSDKPreventingAppLaunch")]
		void AccountForFacebookSDKPreventingAppLaunch ();

		// -(BranchUniversalObject *)getFirstReferringBranchUniversalObject;
		[Export ("getFirstReferringBranchUniversalObject")]
	//	[Verify (MethodToProperty)]
	//	BranchUniversalObject FirstReferringBranchUniversalObject { get; }
		BranchUniversalObject FirstReferringBranchUniversalObject ();

		// -(BranchLinkProperties *)getFirstReferringBranchLinkProperties;
		[Export ("getFirstReferringBranchLinkProperties")]
	//	[Verify (MethodToProperty)]
	//	BranchLinkProperties FirstReferringBranchLinkProperties { get; }
		BranchLinkProperties FirstReferringBranchLinkProperties ();

		// -(NSDictionary *)getFirstReferringParams;
		[Export ("getFirstReferringParams")]
	//	[Verify (MethodToProperty)]
	//	NSDictionary FirstReferringParams { get; }
		NSDictionary FirstReferringParams ();

		// -(BranchUniversalObject *)getLatestReferringBranchUniversalObject;
		[Export ("getLatestReferringBranchUniversalObject")]
	//	[Verify (MethodToProperty)]
	//	BranchUniversalObject LatestReferringBranchUniversalObject { get; }
		BranchUniversalObject LatestReferringBranchUniversalObject ();

		// -(BranchLinkProperties *)getLatestReferringBranchLinkProperties;
		[Export ("getLatestReferringBranchLinkProperties")]
	//	[Verify (MethodToProperty)]
	//	BranchLinkProperties LatestReferringBranchLinkProperties { get; }
		BranchLinkProperties LatestReferringBranchLinkProperties ();

		// -(NSDictionary *)getLatestReferringParams;
		[Export ("getLatestReferringParams")]
	//	[Verify (MethodToProperty)]
	//	NSDictionary LatestReferringParams { get; }
		NSDictionary LatestReferringParams ();

		// -(void)resetUserSession;
		[Export ("resetUserSession")]
		void ResetUserSession ();

		// -(BOOL)isUserIdentified;
		[Export ("isUserIdentified")]
	//	[Verify (MethodToProperty)]
	//	bool IsUserIdentified { get; }
		bool IsUserIdentified ();

		// -(void)setIdentity:(NSString *)userId;
		[Export ("setIdentity:")]
		void SetIdentity (string userId);

		// -(void)setIdentity:(NSString *)userId withCallback:(callbackWithParams)callback;
		[Export ("setIdentity:withCallback:")]
		void SetIdentity (string userId, callbackWithParams callback);

		// -(void)logout;
		[Export ("logout")]
		void Logout ();

		// -(void)logoutWithCallback:(callbackWithStatus)callback;
		[Export ("logoutWithCallback:")]
		void LogoutWithCallback (callbackWithStatus callback);

		// -(void)loadRewardsWithCallback:(callbackWithStatus)callback;
		[Export ("loadRewardsWithCallback:")]
		void LoadRewardsWithCallback (callbackWithStatus callback);

		// -(void)redeemRewards:(NSInteger)count;
		[Export ("redeemRewards:")]
		void RedeemRewards (nint count);

		// -(void)redeemRewards:(NSInteger)count callback:(callbackWithStatus)callback;
		[Export ("redeemRewards:callback:")]
		void RedeemRewards (nint count, callbackWithStatus callback);

		// -(void)redeemRewards:(NSInteger)count forBucket:(NSString *)bucket;
		[Export ("redeemRewards:forBucket:")]
		void RedeemRewards (nint count, string bucket);

		// -(void)redeemRewards:(NSInteger)count forBucket:(NSString *)bucket callback:(callbackWithStatus)callback;
		[Export ("redeemRewards:forBucket:callback:")]
		void RedeemRewards (nint count, string bucket, callbackWithStatus callback);

		// -(NSInteger)getCredits;
		[Export ("getCredits")]
	//	[Verify (MethodToProperty)]
	//	nint Credits { get; }
		nint GetCredits ();

		// -(NSInteger)getCreditsForBucket:(NSString *)bucket;
		[Export ("getCreditsForBucket:")]
		nint GetCreditsForBucket (string bucket);

		// -(void)getCreditHistoryWithCallback:(callbackWithList)callback;
		[Export ("getCreditHistoryWithCallback:")]
		void GetCreditHistoryWithCallback (callbackWithList callback);

		// -(void)getCreditHistoryForBucket:(NSString *)bucket andCallback:(callbackWithList)callback;
		[Export ("getCreditHistoryForBucket:andCallback:")]
		void GetCreditHistoryForBucket (string bucket, callbackWithList callback);

		// -(void)getCreditHistoryAfter:(NSString *)creditTransactionId number:(NSInteger)length order:(BranchCreditHistoryOrder)order andCallback:(callbackWithList)callback;
		[Export ("getCreditHistoryAfter:number:order:andCallback:")]
		void GetCreditHistoryAfter (string creditTransactionId, nint length, BranchCreditHistoryOrder order, callbackWithList callback);

		// -(void)getCreditHistoryForBucket:(NSString *)bucket after:(NSString *)creditTransactionId number:(NSInteger)length order:(BranchCreditHistoryOrder)order andCallback:(callbackWithList)callback;
		[Export ("getCreditHistoryForBucket:after:number:order:andCallback:")]
		void GetCreditHistoryForBucket (string bucket, string creditTransactionId, nint length, BranchCreditHistoryOrder order, callbackWithList callback);

		// -(void)loadActionCountsWithCallback:(callbackWithStatus)callback __attribute__((deprecated("Method is no longer supported. As an alternative, you can set up reward rules in your Branch dashboard, based off actions taken by your referred users. You can then examine credit history using getCreditsHistory to see referred events. More information here: https://github.com/BranchMetrics/iOS-Deferred-Deep-Linking-SDK#deprecation-notice---action-counts")));
		[Export ("loadActionCountsWithCallback:")]
		void LoadActionCountsWithCallback (callbackWithStatus callback);

		// -(void)userCompletedAction:(NSString *)action;
		[Export ("userCompletedAction:")]
		void UserCompletedAction (string action);

		// -(void)userCompletedAction:(NSString *)action withState:(NSDictionary *)state;
		[Export ("userCompletedAction:withState:")]
		void UserCompletedAction (string action, NSDictionary state);

		// -(NSInteger)getTotalCountsForAction:(NSString *)action __attribute__((deprecated("Method is no longer supported. As an alternative, you can set up reward rules in your Branch dashboard, based off of actions taken by your referred users. You can then examine credit history using getCreditsHistory to see referred events. More information here: https://github.com/BranchMetrics/iOS-Deferred-Deep-Linking-SDK#deprecation-notice---action-counts")));
		[Export ("getTotalCountsForAction:")]
		nint GetTotalCountsForAction (string action);

		// -(NSInteger)getUniqueCountsForAction:(NSString *)action __attribute__((deprecated("Method is no longer supported. As an alternative, you can set up reward rules in your Branch dashboard, based off of actions taken by your referred users. You can then examine credit history using getCreditsHistory to see referred events. More information here: https://github.com/BranchMetrics/iOS-Deferred-Deep-Linking-SDK#deprecation-notice---action-counts")));
		[Export ("getUniqueCountsForAction:")]
		nint GetUniqueCountsForAction (string action);

		// -(NSString *)getShortURL;
		[Export ("getShortURL")]
	//	[Verify (MethodToProperty)]
	//	string ShortURL { get; }
		string ShortURL ();

		// -(NSString *)getShortURLWithParams:(NSDictionary *)params;
		[Export ("getShortURLWithParams:")]
		string GetShortURLWithParams (NSDictionary @params);

		// -(NSString *)getShortURLWithParams:(NSDictionary *)params andChannel:(NSString *)channel andFeature:(NSString *)feature;
		[Export ("getShortURLWithParams:andChannel:andFeature:")]
		string GetShortURLWithParams (NSDictionary @params, string channel, string feature);

		// -(NSString *)getShortURLWithParams:(NSDictionary *)params andChannel:(NSString *)channel andFeature:(NSString *)feature andStage:(NSString *)stage;
		[Export ("getShortURLWithParams:andChannel:andFeature:andStage:")]
		string GetShortURLWithParams (NSDictionary @params, string channel, string feature, string stage);

		// -(NSString *)getShortURLWithParams:(NSDictionary *)params andChannel:(NSString *)channel andFeature:(NSString *)feature andStage:(NSString *)stage andAlias:(NSString *)alias;
		[Export ("getShortURLWithParams:andChannel:andFeature:andStage:andAlias:")]
		string GetShortURLWithParams (NSDictionary @params, string channel, string feature, string stage, string alias);

		// -(NSString *)getShortURLWithParams:(NSDictionary *)params andChannel:(NSString *)channel andFeature:(NSString *)feature andStage:(NSString *)stage andType:(BranchLinkType)type;
		[Export ("getShortURLWithParams:andChannel:andFeature:andStage:andType:")]
		string GetShortURLWithParams (NSDictionary @params, string channel, string feature, string stage, BranchLinkType type);

		// -(NSString *)getShortURLWithParams:(NSDictionary *)params andChannel:(NSString *)channel andFeature:(NSString *)feature andStage:(NSString *)stage andMatchDuration:(NSUInteger)duration;
		[Export ("getShortURLWithParams:andChannel:andFeature:andStage:andMatchDuration:")]
		string GetShortURLWithParams (NSDictionary @params, string channel, string feature, string stage, nuint duration);

		// -(NSString *)getShortURLWithParams:(NSDictionary *)params andTags:(NSArray *)tags andChannel:(NSString *)channel andFeature:(NSString *)feature andStage:(NSString *)stage;
		[Export ("getShortURLWithParams:andTags:andChannel:andFeature:andStage:")]
	//	[Verify (StronglyTypedNSArray)]
		string GetShortURLWithParams (NSDictionary @params, NSObject[] tags, string channel, string feature, string stage);

		// -(NSString *)getShortURLWithParams:(NSDictionary *)params andTags:(NSArray *)tags andChannel:(NSString *)channel andFeature:(NSString *)feature andStage:(NSString *)stage andAlias:(NSString *)alias;
		[Export ("getShortURLWithParams:andTags:andChannel:andFeature:andStage:andAlias:")]
	//	[Verify (StronglyTypedNSArray)]
		string GetShortURLWithParams (NSDictionary @params, NSObject[] tags, string channel, string feature, string stage, string alias);

		// -(NSString *)getShortURLWithParams:(NSDictionary *)params andTags:(NSArray *)tags andChannel:(NSString *)channel andFeature:(NSString *)feature andStage:(NSString *)stage andAlias:(NSString *)alias ignoreUAString:(NSString *)ignoreUAString;
		[Export ("getShortURLWithParams:andTags:andChannel:andFeature:andStage:andAlias:ignoreUAString:")]
	//	[Verify (StronglyTypedNSArray)]
		string GetShortURLWithParams (NSDictionary @params, NSObject[] tags, string channel, string feature, string stage, string alias, string ignoreUAString);

		// -(NSString *)getShortURLWithParams:(NSDictionary *)params andTags:(NSArray *)tags andChannel:(NSString *)channel andFeature:(NSString *)feature andStage:(NSString *)stage andAlias:(NSString *)alias ignoreUAString:(NSString *)ignoreUAString forceLinkCreation:(BOOL)forceLinkCreation;
		[Export ("getShortURLWithParams:andTags:andChannel:andFeature:andStage:andAlias:ignoreUAString:forceLinkCreation:")]
	//	[Verify (StronglyTypedNSArray)]
		string GetShortURLWithParams (NSDictionary @params, NSObject[] tags, string channel, string feature, string stage, string alias, string ignoreUAString, bool forceLinkCreation);

		// -(NSString *)getShortURLWithParams:(NSDictionary *)params andTags:(NSArray *)tags andChannel:(NSString *)channel andFeature:(NSString *)feature andStage:(NSString *)stage andType:(BranchLinkType)type;
		[Export ("getShortURLWithParams:andTags:andChannel:andFeature:andStage:andType:")]
	//	[Verify (StronglyTypedNSArray)]
		string GetShortURLWithParams (NSDictionary @params, NSObject[] tags, string channel, string feature, string stage, BranchLinkType type);

		// -(NSString *)getShortURLWithParams:(NSDictionary *)params andTags:(NSArray *)tags andChannel:(NSString *)channel andFeature:(NSString *)feature andStage:(NSString *)stage andMatchDuration:(NSUInteger)duration;
		[Export ("getShortURLWithParams:andTags:andChannel:andFeature:andStage:andMatchDuration:")]
	//	[Verify (StronglyTypedNSArray)]
		string GetShortURLWithParams (NSDictionary @params, NSObject[] tags, string channel, string feature, string stage, nuint duration);

		// -(NSString *)getShortUrlWithParams:(NSDictionary *)params andTags:(NSArray *)tags andAlias:(NSString *)alias andChannel:(NSString *)channel andFeature:(NSString *)feature andStage:(NSString *)stage andMatchDuration:(NSUInteger)duration;
		[Export ("getShortUrlWithParams:andTags:andAlias:andChannel:andFeature:andStage:andMatchDuration:")]
	//	[Verify (StronglyTypedNSArray)]
		string GetShortUrlWithParams (NSDictionary @params, NSObject[] tags, string alias, string channel, string feature, string stage, nuint duration);

		// -(NSString *)getContentUrlWithParams:(NSDictionary *)params andChannel:(NSString *)channel;
		[Export ("getContentUrlWithParams:andChannel:")]
		string GetContentUrlWithParams (NSDictionary @params, string channel);

		// -(NSString *)getContentUrlWithParams:(NSDictionary *)params andTags:(NSArray *)tags andChannel:(NSString *)channel;
		[Export ("getContentUrlWithParams:andTags:andChannel:")]
	//	[Verify (StronglyTypedNSArray)]
		string GetContentUrlWithParams (NSDictionary @params, NSObject[] tags, string channel);

		// -(NSString *)getReferralUrlWithParams:(NSDictionary *)params andChannel:(NSString *)channel;
		[Export ("getReferralUrlWithParams:andChannel:")]
		string GetReferralUrlWithParams (NSDictionary @params, string channel);

		// -(NSString *)getReferralUrlWithParams:(NSDictionary *)params andTags:(NSArray *)tags andChannel:(NSString *)channel;
		[Export ("getReferralUrlWithParams:andTags:andChannel:")]
	//	[Verify (StronglyTypedNSArray)]
		string GetReferralUrlWithParams (NSDictionary @params, NSObject[] tags, string channel);

		// -(NSString *)getLongURLWithParams:(NSDictionary *)params;
		[Export ("getLongURLWithParams:")]
		string GetLongURLWithParams (NSDictionary @params);

		// -(NSString *)getLongURLWithParams:(NSDictionary *)params andFeature:(NSString *)feature;
		[Export ("getLongURLWithParams:andFeature:")]
		string GetLongURLWithParams (NSDictionary @params, string feature);

		// -(NSString *)getLongURLWithParams:(NSDictionary *)params andFeature:(NSString *)feature andStage:(NSString *)stage;
		[Export ("getLongURLWithParams:andFeature:andStage:")]
		string GetLongURLWithParams (NSDictionary @params, string feature, string stage);

		// -(NSString *)getLongURLWithParams:(NSDictionary *)params andFeature:(NSString *)feature andStage:(NSString *)stage andTags:(NSArray *)tags;
		[Export ("getLongURLWithParams:andFeature:andStage:andTags:")]
	//	[Verify (StronglyTypedNSArray)]
		string GetLongURLWithParams (NSDictionary @params, string feature, string stage, NSObject[] tags);

		// -(NSString *)getLongURLWithParams:(NSDictionary *)params andFeature:(NSString *)feature andStage:(NSString *)stage andAlias:(NSString *)alias;
		[Export ("getLongURLWithParams:andFeature:andStage:andAlias:")]
		string GetLongURLWithParams (NSDictionary @params, string feature, string stage, string alias);

		// -(NSString *)getLongURLWithParams:(NSDictionary *)params andChannel:(NSString *)channel andTags:(NSArray *)tags andFeature:(NSString *)feature andStage:(NSString *)stage andAlias:(NSString *)alias;
		[Export ("getLongURLWithParams:andChannel:andTags:andFeature:andStage:andAlias:")]
	//	[Verify (StronglyTypedNSArray)]
		string GetLongURLWithParams (NSDictionary @params, string channel, NSObject[] tags, string feature, string stage, string alias);

		// -(void)getShortURLWithCallback:(callbackWithUrl)callback;
		[Export ("getShortURLWithCallback:")]
		void GetShortURLWithCallback (callbackWithUrl callback);

		// -(void)getShortURLWithParams:(NSDictionary *)params andCallback:(callbackWithUrl)callback;
		[Export ("getShortURLWithParams:andCallback:")]
		void GetShortURLWithParams (NSDictionary @params, callbackWithUrl callback);

		// -(void)getShortURLWithParams:(NSDictionary *)params andChannel:(NSString *)channel andFeature:(NSString *)feature andCallback:(callbackWithUrl)callback;
		[Export ("getShortURLWithParams:andChannel:andFeature:andCallback:")]
		void GetShortURLWithParams (NSDictionary @params, string channel, string feature, callbackWithUrl callback);

		// -(void)getShortURLWithParams:(NSDictionary *)params andChannel:(NSString *)channel andFeature:(NSString *)feature andStage:(NSString *)stage andCallback:(callbackWithUrl)callback;
		[Export ("getShortURLWithParams:andChannel:andFeature:andStage:andCallback:")]
		void GetShortURLWithParams (NSDictionary @params, string channel, string feature, string stage, callbackWithUrl callback);

		// -(void)getShortURLWithParams:(NSDictionary *)params andChannel:(NSString *)channel andFeature:(NSString *)feature andStage:(NSString *)stage andAlias:(NSString *)alias andCallback:(callbackWithUrl)callback;
		[Export ("getShortURLWithParams:andChannel:andFeature:andStage:andAlias:andCallback:")]
		void GetShortURLWithParams (NSDictionary @params, string channel, string feature, string stage, string alias, callbackWithUrl callback);

		// -(void)getShortURLWithParams:(NSDictionary *)params andChannel:(NSString *)channel andFeature:(NSString *)feature andStage:(NSString *)stage andType:(BranchLinkType)type andCallback:(callbackWithUrl)callback;
		[Export ("getShortURLWithParams:andChannel:andFeature:andStage:andType:andCallback:")]
		void GetShortURLWithParams (NSDictionary @params, string channel, string feature, string stage, BranchLinkType type, callbackWithUrl callback);

		// -(void)getShortURLWithParams:(NSDictionary *)params andChannel:(NSString *)channel andFeature:(NSString *)feature andStage:(NSString *)stage andMatchDuration:(NSUInteger)duration andCallback:(callbackWithUrl)callback;
		[Export ("getShortURLWithParams:andChannel:andFeature:andStage:andMatchDuration:andCallback:")]
		void GetShortURLWithParams (NSDictionary @params, string channel, string feature, string stage, nuint duration, callbackWithUrl callback);

		// -(void)getShortURLWithParams:(NSDictionary *)params andTags:(NSArray *)tags andChannel:(NSString *)channel andFeature:(NSString *)feature andStage:(NSString *)stage andCallback:(callbackWithUrl)callback;
		[Export ("getShortURLWithParams:andTags:andChannel:andFeature:andStage:andCallback:")]
	//	[Verify (StronglyTypedNSArray)]
		void GetShortURLWithParams (NSDictionary @params, NSObject[] tags, string channel, string feature, string stage, callbackWithUrl callback);

		// -(void)getShortURLWithParams:(NSDictionary *)params andTags:(NSArray *)tags andChannel:(NSString *)channel andFeature:(NSString *)feature andStage:(NSString *)stage andAlias:(NSString *)alias andCallback:(callbackWithUrl)callback;
		[Export ("getShortURLWithParams:andTags:andChannel:andFeature:andStage:andAlias:andCallback:")]
	//	[Verify (StronglyTypedNSArray)]
		void GetShortURLWithParams (NSDictionary @params, NSObject[] tags, string channel, string feature, string stage, string alias, callbackWithUrl callback);

		// -(void)getShortURLWithParams:(NSDictionary *)params andTags:(NSArray *)tags andChannel:(NSString *)channel andFeature:(NSString *)feature andStage:(NSString *)stage andType:(BranchLinkType)type andCallback:(callbackWithUrl)callback;
		[Export ("getShortURLWithParams:andTags:andChannel:andFeature:andStage:andType:andCallback:")]
	//	[Verify (StronglyTypedNSArray)]
		void GetShortURLWithParams (NSDictionary @params, NSObject[] tags, string channel, string feature, string stage, BranchLinkType type, callbackWithUrl callback);

		// -(void)getShortURLWithParams:(NSDictionary *)params andTags:(NSArray *)tags andChannel:(NSString *)channel andFeature:(NSString *)feature andStage:(NSString *)stage andMatchDuration:(NSUInteger)duration andCallback:(callbackWithUrl)callback;
		[Export ("getShortURLWithParams:andTags:andChannel:andFeature:andStage:andMatchDuration:andCallback:")]
	//	[Verify (StronglyTypedNSArray)]
		void GetShortURLWithParams (NSDictionary @params, NSObject[] tags, string channel, string feature, string stage, nuint duration, callbackWithUrl callback);

		// -(void)getShortUrlWithParams:(NSDictionary *)params andTags:(NSArray *)tags andAlias:(NSString *)alias andMatchDuration:(NSUInteger)duration andChannel:(NSString *)channel andFeature:(NSString *)feature andStage:(NSString *)stage andCallback:(callbackWithUrl)callback;
		[Export ("getShortUrlWithParams:andTags:andAlias:andMatchDuration:andChannel:andFeature:andStage:andCallback:")]
	//	[Verify (StronglyTypedNSArray)]
		void GetShortUrlWithParams (NSDictionary @params, NSObject[] tags, string alias, nuint duration, string channel, string feature, string stage, callbackWithUrl callback);

		// -(void)getContentUrlWithParams:(NSDictionary *)params andChannel:(NSString *)channel andCallback:(callbackWithUrl)callback;
		[Export ("getContentUrlWithParams:andChannel:andCallback:")]
		void GetContentUrlWithParams (NSDictionary @params, string channel, callbackWithUrl callback);

		// -(void)getContentUrlWithParams:(NSDictionary *)params andTags:(NSArray *)tags andChannel:(NSString *)channel andCallback:(callbackWithUrl)callback;
		[Export ("getContentUrlWithParams:andTags:andChannel:andCallback:")]
	//	[Verify (StronglyTypedNSArray)]
		void GetContentUrlWithParams (NSDictionary @params, NSObject[] tags, string channel, callbackWithUrl callback);

		// -(void)getReferralUrlWithParams:(NSDictionary *)params andChannel:(NSString *)channel andCallback:(callbackWithUrl)callback;
		[Export ("getReferralUrlWithParams:andChannel:andCallback:")]
		void GetReferralUrlWithParams (NSDictionary @params, string channel, callbackWithUrl callback);

		// -(void)getReferralUrlWithParams:(NSDictionary *)params andTags:(NSArray *)tags andChannel:(NSString *)channel andCallback:(callbackWithUrl)callback;
		[Export ("getReferralUrlWithParams:andTags:andChannel:andCallback:")]
	//	[Verify (StronglyTypedNSArray)]
		void GetReferralUrlWithParams (NSDictionary @params, NSObject[] tags, string channel, callbackWithUrl callback);

		// -(void)getSpotlightUrlWithParams:(NSDictionary *)params callback:(callbackWithParams)callback;
		[Export ("getSpotlightUrlWithParams:callback:")]
		void GetSpotlightUrlWithParams (NSDictionary @params, callbackWithParams callback);

		// -(void)createDiscoverableContentWithTitle:(NSString *)title description:(NSString *)description;
		[Export ("createDiscoverableContentWithTitle:description:")]
		void CreateDiscoverableContentWithTitle (string title, string description);

		// -(void)createDiscoverableContentWithTitle:(NSString *)title description:(NSString *)description callback:(callbackWithUrl)callback;
		[Export ("createDiscoverableContentWithTitle:description:callback:")]
		void CreateDiscoverableContentWithTitle (string title, string description, callbackWithUrl callback);

		// -(void)createDiscoverableContentWithTitle:(NSString *)title description:(NSString *)description publiclyIndexable:(BOOL)publiclyIndexable callback:(callbackWithUrl)callback;
		[Export ("createDiscoverableContentWithTitle:description:publiclyIndexable:callback:")]
		void CreateDiscoverableContentWithTitle (string title, string description, bool publiclyIndexable, callbackWithUrl callback);

		// -(void)createDiscoverableContentWithTitle:(NSString *)title description:(NSString *)description type:(NSString *)type publiclyIndexable:(BOOL)publiclyIndexable callback:(callbackWithUrl)callback;
		[Export ("createDiscoverableContentWithTitle:description:type:publiclyIndexable:callback:")]
		void CreateDiscoverableContentWithTitle (string title, string description, string type, bool publiclyIndexable, callbackWithUrl callback);

		// -(void)createDiscoverableContentWithTitle:(NSString *)title description:(NSString *)description thumbnailUrl:(NSURL *)thumbnailUrl type:(NSString *)type publiclyIndexable:(BOOL)publiclyIndexable callback:(callbackWithUrl)callback;
		[Export ("createDiscoverableContentWithTitle:description:thumbnailUrl:type:publiclyIndexable:callback:")]
		void CreateDiscoverableContentWithTitle (string title, string description, NSUrl thumbnailUrl, string type, bool publiclyIndexable, callbackWithUrl callback);

		// -(void)createDiscoverableContentWithTitle:(NSString *)title description:(NSString *)description thumbnailUrl:(NSURL *)thumbnailUrl type:(NSString *)type publiclyIndexable:(BOOL)publiclyIndexable keywords:(NSSet *)keywords callback:(callbackWithUrl)callback;
		[Export ("createDiscoverableContentWithTitle:description:thumbnailUrl:type:publiclyIndexable:keywords:callback:")]
		void CreateDiscoverableContentWithTitle (string title, string description, NSUrl thumbnailUrl, string type, bool publiclyIndexable, NSSet keywords, callbackWithUrl callback);

		// -(void)createDiscoverableContentWithTitle:(NSString *)title description:(NSString *)description thumbnailUrl:(NSURL *)thumbnailUrl linkParams:(NSDictionary *)linkParams publiclyIndexable:(BOOL)publiclyIndexable keywords:(NSSet *)keywords;
		[Export ("createDiscoverableContentWithTitle:description:thumbnailUrl:linkParams:publiclyIndexable:keywords:")]
		void CreateDiscoverableContentWithTitle (string title, string description, NSUrl thumbnailUrl, NSDictionary linkParams, bool publiclyIndexable, NSSet keywords);

		// -(void)createDiscoverableContentWithTitle:(NSString *)title description:(NSString *)description thumbnailUrl:(NSURL *)thumbnailUrl linkParams:(NSDictionary *)linkParams type:(NSString *)type publiclyIndexable:(BOOL)publiclyIndexable keywords:(NSSet *)keywords;
		[Export ("createDiscoverableContentWithTitle:description:thumbnailUrl:linkParams:type:publiclyIndexable:keywords:")]
		void CreateDiscoverableContentWithTitle (string title, string description, NSUrl thumbnailUrl, NSDictionary linkParams, string type, bool publiclyIndexable, NSSet keywords);

		// -(void)createDiscoverableContentWithTitle:(NSString *)title description:(NSString *)description thumbnailUrl:(NSURL *)thumbnailUrl type:(NSString *)type publiclyIndexable:(BOOL)publiclyIndexable keywords:(NSSet *)keywords;
		[Export ("createDiscoverableContentWithTitle:description:thumbnailUrl:type:publiclyIndexable:keywords:")]
		void CreateDiscoverableContentWithTitle (string title, string description, NSUrl thumbnailUrl, string type, bool publiclyIndexable, NSSet keywords);

		// -(void)createDiscoverableContentWithTitle:(NSString *)title description:(NSString *)description thumbnailUrl:(NSURL *)thumbnailUrl linkParams:(NSDictionary *)linkParams publiclyIndexable:(BOOL)publiclyIndexable;
		[Export ("createDiscoverableContentWithTitle:description:thumbnailUrl:linkParams:publiclyIndexable:")]
		void CreateDiscoverableContentWithTitle (string title, string description, NSUrl thumbnailUrl, NSDictionary linkParams, bool publiclyIndexable);

		// -(void)createDiscoverableContentWithTitle:(NSString *)title description:(NSString *)description thumbnailUrl:(NSURL *)thumbnailUrl linkParams:(NSDictionary *)linkParams type:(NSString *)type publiclyIndexable:(BOOL)publiclyIndexable keywords:(NSSet *)keywords callback:(callbackWithUrl)callback;
		[Export ("createDiscoverableContentWithTitle:description:thumbnailUrl:linkParams:type:publiclyIndexable:keywords:callback:")]
		void CreateDiscoverableContentWithTitle (string title, string description, NSUrl thumbnailUrl, NSDictionary linkParams, string type, bool publiclyIndexable, NSSet keywords, callbackWithUrl callback);

		// -(void)createDiscoverableContentWithTitle:(NSString *)title description:(NSString *)description thumbnailUrl:(NSURL *)thumbnailUrl linkParams:(NSDictionary *)linkParams type:(NSString *)type publiclyIndexable:(BOOL)publiclyIndexable keywords:(NSSet *)keywords expirationDate:(NSDate *)expirationDate callback:(callbackWithUrl)callback;
		[Export ("createDiscoverableContentWithTitle:description:thumbnailUrl:linkParams:type:publiclyIndexable:keywords:expirationDate:callback:")]
		void CreateDiscoverableContentWithTitle (string title, string description, NSUrl thumbnailUrl, NSDictionary linkParams, string type, bool publiclyIndexable, NSSet keywords, NSDate expirationDate, callbackWithUrl callback);

		// -(void)createDiscoverableContentWithTitle:(NSString *)title description:(NSString *)description thumbnailUrl:(NSURL *)thumbnailUrl linkParams:(NSDictionary *)linkParams type:(NSString *)type publiclyIndexable:(BOOL)publiclyIndexable keywords:(NSSet *)keywords expirationDate:(NSDate *)expirationDate spotlightCallback:(callbackWithUrlAndSpotlightIdentifier)spotlightCallback;
		[Export ("createDiscoverableContentWithTitle:description:thumbnailUrl:linkParams:type:publiclyIndexable:keywords:expirationDate:spotlightCallback:")]
		void CreateDiscoverableContentWithTitle (string title, string description, NSUrl thumbnailUrl, NSDictionary linkParams, string type, bool publiclyIndexable, NSSet keywords, NSDate expirationDate, callbackWithUrlAndSpotlightIdentifier spotlightCallback);

		// -(void)getPromoCodeWithCallback:(callbackWithParams)callback __attribute__((deprecated("This method has been deprecated. Branch will no longer provide improvements or modifications to referral/promo code functionality.")));
		[Export ("getPromoCodeWithCallback:")]
		void GetPromoCodeWithCallback (callbackWithParams callback);

		// -(void)getReferralCodeWithCallback:(callbackWithParams)callback __attribute__((deprecated("This method has been deprecated. Branch will no longer provide improvements or modifications to referral/promo code functionality.")));
		[Export ("getReferralCodeWithCallback:")]
		void GetReferralCodeWithCallback (callbackWithParams callback);

		// -(void)getPromoCodeWithAmount:(NSInteger)amount callback:(callbackWithParams)callback __attribute__((deprecated("This method has been deprecated. Branch will no longer provide any improvements or modifications to referral/promo code functionality.")));
		[Export ("getPromoCodeWithAmount:callback:")]
		void GetPromoCodeWithAmount (nint amount, callbackWithParams callback);

		// -(void)getReferralCodeWithAmount:(NSInteger)amount andCallback:(callbackWithParams)callback __attribute__((deprecated("This method has been deprecated. Branch will no longer provide any improvements or modifications to referral/promo code functionality.")));
		[Export ("getReferralCodeWithAmount:andCallback:")]
		void GetReferralCodeWithAmount (nint amount, callbackWithParams callback);

		// -(void)getPromoCodeWithPrefix:(NSString *)prefix amount:(NSInteger)amount callback:(callbackWithParams)callback __attribute__((deprecated("This method has been deprecated. Branch will no longer provide any improvements or modifications to referral/promo code functionality.")));
		[Export ("getPromoCodeWithPrefix:amount:callback:")]
		void GetPromoCodeWithPrefix (string prefix, nint amount, callbackWithParams callback);

		// -(void)getReferralCodeWithPrefix:(NSString *)prefix amount:(NSInteger)amount andCallback:(callbackWithParams)callback __attribute__((deprecated("This method has been deprecated. Branch will no longer provide any improvements or modifications to referral/promo code functionality.")));
		[Export ("getReferralCodeWithPrefix:amount:andCallback:")]
		void GetReferralCodeWithPrefix (string prefix, nint amount, callbackWithParams callback);

		// -(void)getPromoCodeWithAmount:(NSInteger)amount expiration:(NSDate *)expiration callback:(callbackWithParams)callback __attribute__((deprecated("This method has been deprecated. Branch will no longer provide any improvements or modifications to referral/promo code functionality.")));
		[Export ("getPromoCodeWithAmount:expiration:callback:")]
		void GetPromoCodeWithAmount (nint amount, NSDate expiration, callbackWithParams callback);

		// -(void)getReferralCodeWithAmount:(NSInteger)amount expiration:(NSDate *)expiration andCallback:(callbackWithParams)callback __attribute__((deprecated("This method has been deprecated. Branch will no longer provide any improvements or modifications to referral/promo code functionality.")));
		[Export ("getReferralCodeWithAmount:expiration:andCallback:")]
		void GetReferralCodeWithAmount (nint amount, NSDate expiration, callbackWithParams callback);

		// -(void)getPromoCodeWithPrefix:(NSString *)prefix amount:(NSInteger)amount expiration:(NSDate *)expiration callback:(callbackWithParams)callback __attribute__((deprecated("This method has been deprecated. Branch will no longer provide any improvements or modifications to referral/promo code functionality.")));
		[Export ("getPromoCodeWithPrefix:amount:expiration:callback:")]
		void GetPromoCodeWithPrefix (string prefix, nint amount, NSDate expiration, callbackWithParams callback);

		// -(void)getReferralCodeWithPrefix:(NSString *)prefix amount:(NSInteger)amount expiration:(NSDate *)expiration andCallback:(callbackWithParams)callback __attribute__((deprecated("This method has been deprecated. Branch will no longer provide any improvements or modifications to referral/promo code functionality.")));
		[Export ("getReferralCodeWithPrefix:amount:expiration:andCallback:")]
		void GetReferralCodeWithPrefix (string prefix, nint amount, NSDate expiration, callbackWithParams callback);

		// -(void)getPromoCodeWithPrefix:(NSString *)prefix amount:(NSInteger)amount expiration:(NSDate *)expiration bucket:(NSString *)bucket usageType:(BranchPromoCodeUsageType)usageType rewardLocation:(BranchPromoCodeRewardLocation)rewardLocation callback:(callbackWithParams)callback __attribute__((deprecated("This method has been deprecated. Branch will no longer provide any improvements or modifications to referral/promo code functionality.")));
		[Export ("getPromoCodeWithPrefix:amount:expiration:bucket:usageType:rewardLocation:callback:")]
		void GetPromoCodeWithPrefix (string prefix, nint amount, NSDate expiration, string bucket, BranchPromoCodeUsageType usageType, BranchPromoCodeRewardLocation rewardLocation, callbackWithParams callback);

		// -(void)getReferralCodeWithPrefix:(NSString *)prefix amount:(NSInteger)amount expiration:(NSDate *)expiration bucket:(NSString *)bucket calculationType:(BranchPromoCodeUsageType)calcType location:(BranchPromoCodeRewardLocation)location andCallback:(callbackWithParams)callback __attribute__((deprecated("This method has been deprecated. Branch will no longer provide any improvements or modifications to referral/promo code functionality.")));
		[Export ("getReferralCodeWithPrefix:amount:expiration:bucket:calculationType:location:andCallback:")]
		void GetReferralCodeWithPrefix (string prefix, nint amount, NSDate expiration, string bucket, BranchPromoCodeUsageType calcType, BranchPromoCodeRewardLocation location, callbackWithParams callback);

		// -(void)validatePromoCode:(NSString *)code callback:(callbackWithParams)callback __attribute__((deprecated("This method has been deprecated. Branch will no longer provide any improvements or modifications to referral/promo code functionality.")));
		[Export ("validatePromoCode:callback:")]
		void ValidatePromoCode (string code, callbackWithParams callback);

		// -(void)validateReferralCode:(NSString *)code andCallback:(callbackWithParams)callback __attribute__((deprecated("This method has been deprecated. Branch will no longer provide any improvements or modifications to referral/promo code functionality.")));
		[Export ("validateReferralCode:andCallback:")]
		void ValidateReferralCode (string code, callbackWithParams callback);

		// -(void)applyPromoCode:(NSString *)code callback:(callbackWithParams)callback __attribute__((deprecated("This method has been deprecated. Branch will no longer provide any improvements or modifications to referral/promo code functionality.")));
		[Export ("applyPromoCode:callback:")]
		void ApplyPromoCode (string code, callbackWithParams callback);

		// -(void)applyReferralCode:(NSString *)code andCallback:(callbackWithParams)callback __attribute__((deprecated("This method has been deprecated. Branch will no longer provide any improvements or modifications to referral/promo code functionality.")));
		[Export ("applyReferralCode:andCallback:")]
		void ApplyReferralCode (string code, callbackWithParams callback);

		// -(id)initWithInterface:(BNCServerInterface *)interface queue:(BNCServerRequestQueue *)queue cache:(BNCLinkCache *)cache preferenceHelper:(BNCPreferenceHelper *)preferenceHelper key:(NSString *)key;
		[Export ("initWithInterface:queue:cache:preferenceHelper:key:")]
		IntPtr Constructor (BNCServerInterface @interface, BNCServerRequestQueue queue, BNCLinkCache cache, BNCPreferenceHelper preferenceHelper, string key);

		// -(void)registerViewWithParams:(NSDictionary *)params andCallback:(callbackWithParams)callback;
		[Export ("registerViewWithParams:andCallback:")]
		void RegisterViewWithParams (NSDictionary @params, callbackWithParams callback);

		// -(void)executeGenericRequest:(BNCServerRequest *)request;
		[Export ("executeGenericRequest:")]
		void ExecuteGenericRequest (BNCServerRequest request);
	}
}