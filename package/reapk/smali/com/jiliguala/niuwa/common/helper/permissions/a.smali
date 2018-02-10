.class public Lcom/jiliguala/niuwa/common/helper/permissions/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/jiliguala/niuwa/common/helper/permissions/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/helper/permissions/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/hardware/Camera;)V
    .locals 0
    .param p0, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 25
    if-eqz p0, :cond_0

    .line 26
    invoke-virtual {p0}, Landroid/hardware/Camera;->release()V

    .line 27
    const/4 p0, 0x0

    .line 29
    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 3

    .prologue
    .line 12
    const/4 v0, 0x0

    .line 14
    .local v0, "camera":Landroid/hardware/Camera;
    :try_start_0
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/helper/permissions/a;->a(Landroid/hardware/Camera;)V

    .line 15
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 16
    const/4 v2, 0x1

    .line 20
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/helper/permissions/a;->a(Landroid/hardware/Camera;)V

    .line 18
    :goto_0
    return v2

    .line 17
    :catch_0
    move-exception v1

    .line 18
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 20
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/helper/permissions/a;->a(Landroid/hardware/Camera;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/helper/permissions/a;->a(Landroid/hardware/Camera;)V

    .line 21
    throw v2
.end method
