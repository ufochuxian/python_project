.class Lio/fabric/sdk/android/services/b/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/services/b/e;->onRollOver(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/fabric/sdk/android/services/b/e;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/b/e;)V
    .locals 0
    .param p1, "this$0"    # Lio/fabric/sdk/android/services/b/e;

    .prologue
    .line 79
    .local p0, "this":Lio/fabric/sdk/android/services/b/e$3;, "Lio/fabric/sdk/android/services/b/e$3;"
    iput-object p1, p0, Lio/fabric/sdk/android/services/b/e$3;->a:Lio/fabric/sdk/android/services/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 83
    .local p0, "this":Lio/fabric/sdk/android/services/b/e$3;, "Lio/fabric/sdk/android/services/b/e$3;"
    :try_start_0
    iget-object v1, p0, Lio/fabric/sdk/android/services/b/e$3;->a:Lio/fabric/sdk/android/services/b/e;

    iget-object v1, v1, Lio/fabric/sdk/android/services/b/e;->c:Lio/fabric/sdk/android/services/b/i;

    invoke-interface {v1}, Lio/fabric/sdk/android/services/b/i;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lio/fabric/sdk/android/services/b/e$3;->a:Lio/fabric/sdk/android/services/b/e;

    iget-object v1, v1, Lio/fabric/sdk/android/services/b/e;->a:Landroid/content/Context;

    const-string v2, "Failed to send events files."

    invoke-static {v1, v2, v0}, Lio/fabric/sdk/android/services/common/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
