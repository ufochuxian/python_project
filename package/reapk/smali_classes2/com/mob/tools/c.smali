.class public Lcom/mob/tools/c;
.super Lcom/mob/tools/log/d;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/mob/tools/log/d;-><init>()V

    .line 9
    return-void
.end method

.method public static a()Lcom/mob/tools/log/d;
    .locals 2

    .prologue
    .line 16
    const-string v0, "MOBTOOLS"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mob/tools/c;->getInstanceForSDK(Ljava/lang/String;Z)Lcom/mob/tools/log/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getSDKTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    const-string v0, "MOBTOOLS"

    return-object v0
.end method
