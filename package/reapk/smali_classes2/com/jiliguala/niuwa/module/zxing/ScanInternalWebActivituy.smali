.class public Lcom/jiliguala/niuwa/module/zxing/ScanInternalWebActivituy;
.super Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/jiliguala/niuwa/module/zxing/ScanInternalWebActivituy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/zxing/ScanInternalWebActivituy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterOverrideUrlLoading(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/zxing/ScanInternalWebActivituy;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/zxing/ScanInternalWebActivituy;->pressBack()V

    .line 20
    :cond_0
    return-void
.end method
