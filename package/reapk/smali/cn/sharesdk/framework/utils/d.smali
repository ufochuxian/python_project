.class public Lcn/sharesdk/framework/utils/d;
.super Lcom/mob/tools/log/d;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/mob/tools/log/d;-><init>()V

    .line 14
    const-string v0, "SHARESDK"

    new-instance v1, Lcn/sharesdk/framework/utils/d$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/framework/utils/d$1;-><init>(Lcn/sharesdk/framework/utils/d;)V

    invoke-static {v0, v1}, Lcn/sharesdk/framework/utils/d;->setCollector(Ljava/lang/String;Lcom/mob/tools/log/a;)V

    .line 23
    return-void
.end method

.method public static a()Lcom/mob/tools/log/d;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcn/sharesdk/framework/utils/d;

    invoke-direct {v0}, Lcn/sharesdk/framework/utils/d;-><init>()V

    return-object v0
.end method

.method public static b()Lcom/mob/tools/log/d;
    .locals 2

    .prologue
    .line 34
    const-string v0, "SHARESDK"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/sharesdk/framework/utils/d;->getInstanceForSDK(Ljava/lang/String;Z)Lcom/mob/tools/log/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getSDKTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "SHARESDK"

    return-object v0
.end method
