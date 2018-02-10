.class public Lcom/pingplusplus/android/PingppObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pingplusplus/android/PingppObject$a;
    }
.end annotation


# instance fields
.field public currentChannel:Ljava/lang/String;

.field public dataCollection:Lcom/pingplusplus/android/PingppDataCollection;

.field public ignoreResultUrl:Z

.field public ignoreTitleBar:Z

.field public isOne:Z

.field public pingppQPayHandler:Lcom/pingplusplus/android/f;

.field public pingppWxHandler:Lcom/pingplusplus/android/m;

.field public qpayScheme:Ljava/lang/String;

.field public qqAppId:Ljava/lang/String;

.field public sdkType:Lcom/pingplusplus/android/PingppDataCollection$a;

.field public wxAppId:Ljava/lang/String;

.field public wxErrCode:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v1, p0, Lcom/pingplusplus/android/PingppObject;->wxAppId:Ljava/lang/String;

    .line 9
    iput-object v1, p0, Lcom/pingplusplus/android/PingppObject;->qqAppId:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/pingplusplus/android/PingppObject;->currentChannel:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lcom/pingplusplus/android/PingppObject;->pingppWxHandler:Lcom/pingplusplus/android/m;

    .line 15
    iput-object v1, p0, Lcom/pingplusplus/android/PingppObject;->pingppQPayHandler:Lcom/pingplusplus/android/f;

    .line 17
    const/16 v0, -0xa

    iput v0, p0, Lcom/pingplusplus/android/PingppObject;->wxErrCode:I

    .line 19
    sget-object v0, Lcom/pingplusplus/android/PingppDataCollection$a;->a:Lcom/pingplusplus/android/PingppDataCollection$a;

    iput-object v0, p0, Lcom/pingplusplus/android/PingppObject;->sdkType:Lcom/pingplusplus/android/PingppDataCollection$a;

    .line 25
    iput-object v1, p0, Lcom/pingplusplus/android/PingppObject;->qpayScheme:Ljava/lang/String;

    .line 27
    iput-boolean v2, p0, Lcom/pingplusplus/android/PingppObject;->ignoreResultUrl:Z

    .line 29
    iput-boolean v2, p0, Lcom/pingplusplus/android/PingppObject;->ignoreTitleBar:Z

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/pingplusplus/android/e;)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/pingplusplus/android/PingppObject;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/pingplusplus/android/PingppObject;
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/pingplusplus/android/PingppObject$a;->a()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    return-object v0
.end method
