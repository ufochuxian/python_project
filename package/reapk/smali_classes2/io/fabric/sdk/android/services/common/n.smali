.class public Lio/fabric/sdk/android/services/common/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = ""


# instance fields
.field private final b:Lio/fabric/sdk/android/services/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/services/a/d",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lio/fabric/sdk/android/services/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/services/a/b",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lio/fabric/sdk/android/services/common/n$1;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/services/common/n$1;-><init>(Lio/fabric/sdk/android/services/common/n;)V

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/n;->b:Lio/fabric/sdk/android/services/a/d;

    .line 52
    new-instance v0, Lio/fabric/sdk/android/services/a/b;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/a/b;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/n;->c:Lio/fabric/sdk/android/services/a/b;

    .line 53
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 57
    :try_start_0
    iget-object v3, p0, Lio/fabric/sdk/android/services/common/n;->c:Lio/fabric/sdk/android/services/a/b;

    iget-object v4, p0, Lio/fabric/sdk/android/services/common/n;->b:Lio/fabric/sdk/android/services/a/d;

    invoke-virtual {v3, p1, v4}, Lio/fabric/sdk/android/services/a/b;->a(Landroid/content/Context;Lio/fabric/sdk/android/services/a/d;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 59
    .local v1, "name":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 62
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v3

    const-string v4, "Fabric"

    const-string v5, "Failed to determine installer package name"

    invoke-interface {v3, v4, v5, v0}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 62
    goto :goto_0
.end method
