.class public Lio/fabric/sdk/android/services/settings/i;
.super Lio/fabric/sdk/android/services/settings/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/i;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/c;)V
    .locals 6
    .param p1, "kit"    # Lio/fabric/sdk/android/i;
    .param p2, "protocolAndHostOverride"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "requestFactory"    # Lio/fabric/sdk/android/services/network/c;

    .prologue
    .line 32
    sget-object v5, Lio/fabric/sdk/android/services/network/HttpMethod;->POST:Lio/fabric/sdk/android/services/network/HttpMethod;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/fabric/sdk/android/services/settings/a;-><init>(Lio/fabric/sdk/android/i;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/c;Lio/fabric/sdk/android/services/network/HttpMethod;)V

    .line 33
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lio/fabric/sdk/android/services/settings/d;)Z
    .locals 1

    .prologue
    .line 29
    invoke-super {p0, p1}, Lio/fabric/sdk/android/services/settings/a;->a(Lio/fabric/sdk/android/services/settings/d;)Z

    move-result v0

    return v0
.end method
