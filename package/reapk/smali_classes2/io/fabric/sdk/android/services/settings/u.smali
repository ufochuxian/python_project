.class public Lio/fabric/sdk/android/services/settings/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Z = true

.field public static final B:I = 0x1

.field public static final C:Ljava/lang/String; = "update_endpoint"

.field public static final D:Ljava/lang/String; = "update_suspend_duration"

.field public static final E:Ljava/lang/String;

.field public static final F:I = 0xe10

.field public static final G:Ljava/lang/String; = "prompt_enabled"

.field public static final H:Ljava/lang/String; = "collect_reports"

.field public static final I:Ljava/lang/String; = "collect_logged_exceptions"

.field public static final J:Ljava/lang/String; = "collect_analytics"

.field public static final K:Z = false

.field public static final L:Z = true

.field public static final M:Z = true

.field public static final N:Z = false

.field public static final O:Ljava/lang/String; = "identifier"

.field public static final P:Ljava/lang/String; = "status"

.field public static final Q:Ljava/lang/String; = "url"

.field public static final R:Ljava/lang/String; = "reports_url"

.field public static final S:Ljava/lang/String; = "update_required"

.field public static final T:Ljava/lang/String; = "icon"

.field public static final U:Z = false

.field public static final V:Ljava/lang/String; = "hash"

.field public static final W:Ljava/lang/String; = "width"

.field public static final X:Ljava/lang/String; = "height"

.field public static final Y:Ljava/lang/String; = "prerendered"

.field public static final Z:Ljava/lang/String; = "log_buffer_size"

.field public static final a:Ljava/lang/String; = "expires_at"

.field public static final aA:Ljava/lang/String; = "Always Send"

.field public static final aB:Ljava/lang/String; = "Don\'t Send"

.field public static final aa:Ljava/lang/String; = "max_chained_exception_depth"

.field public static final ab:Ljava/lang/String; = "max_custom_exception_events"

.field public static final ac:Ljava/lang/String; = "max_custom_key_value_pairs"

.field public static final ad:Ljava/lang/String; = "identifier_mask"

.field public static final ae:Ljava/lang/String; = "send_session_without_crash"

.field public static final af:Ljava/lang/String; = "max_complete_sessions_count"

.field public static final ag:I = 0xe10

.field public static final ah:I = 0xfa00

.field public static final ai:I = 0x8

.field public static final aj:I = 0x40

.field public static final ak:I = 0x40

.field public static final al:I = 0xff

.field public static final am:Z = false

.field public static final an:I = 0x4

.field public static final ao:Ljava/lang/String; = "title"

.field public static final ap:Ljava/lang/String; = "message"

.field public static final aq:Ljava/lang/String; = "send_button_title"

.field public static final ar:Ljava/lang/String; = "show_cancel_button"

.field public static final as:Ljava/lang/String; = "cancel_button_title"

.field public static final at:Ljava/lang/String; = "show_always_send_button"

.field public static final au:Ljava/lang/String; = "always_send_button_title"

.field public static final av:Ljava/lang/String; = "Send Crash Report?"

.field public static final aw:Ljava/lang/String; = "Looks like we crashed! Please help us fix the problem by sending a crash report."

.field public static final ax:Z = true

.field public static final ay:Z = true

.field public static final az:Ljava/lang/String; = "Send"

.field public static final b:Ljava/lang/String; = "app"

.field public static final c:Ljava/lang/String; = "analytics"

.field public static final d:Ljava/lang/String; = "beta"

.field public static final e:Ljava/lang/String; = "session"

.field public static final f:Ljava/lang/String; = "prompt"

.field public static final g:Ljava/lang/String; = "settings_version"

.field public static final h:Ljava/lang/String; = "features"

.field public static final i:Ljava/lang/String; = "cache_duration"

.field public static final j:I = 0x0

.field public static final k:Ljava/lang/String; = "url"

.field public static final l:Ljava/lang/String; = "flush_interval_secs"

.field public static final m:Ljava/lang/String; = "max_byte_size_per_file"

.field public static final n:Ljava/lang/String; = "max_file_count_per_send"

.field public static final o:Ljava/lang/String; = "max_pending_send_file_count"

.field public static final p:Ljava/lang/String; = "track_custom_events"

.field public static final q:Ljava/lang/String; = "track_predefined_events"

.field public static final r:Ljava/lang/String; = "sampling_rate"

.field public static final s:Ljava/lang/String; = "flush_on_background"

.field public static final t:Ljava/lang/String; = "https://e.crashlytics.com/spi/v2/events"

.field public static final u:I = 0x258

.field public static final v:I = 0x1f40

.field public static final w:I = 0x1

.field public static final x:I = 0x64

.field public static final y:Z = true

.field public static final z:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-object v0, Lio/fabric/sdk/android/services/settings/u;->E:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
