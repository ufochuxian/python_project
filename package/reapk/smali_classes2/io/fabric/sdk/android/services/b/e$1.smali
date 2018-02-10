.class Lio/fabric/sdk/android/services/b/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/services/b/e;->a(Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Z

.field final synthetic c:Lio/fabric/sdk/android/services/b/e;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/b/e;Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "this$0"    # Lio/fabric/sdk/android/services/b/e;

    .prologue
    .line 46
    .local p0, "this":Lio/fabric/sdk/android/services/b/e$1;, "Lio/fabric/sdk/android/services/b/e$1;"
    iput-object p1, p0, Lio/fabric/sdk/android/services/b/e$1;->c:Lio/fabric/sdk/android/services/b/e;

    iput-object p2, p0, Lio/fabric/sdk/android/services/b/e$1;->a:Ljava/lang/Object;

    iput-boolean p3, p0, Lio/fabric/sdk/android/services/b/e$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 50
    .local p0, "this":Lio/fabric/sdk/android/services/b/e$1;, "Lio/fabric/sdk/android/services/b/e$1;"
    :try_start_0
    iget-object v1, p0, Lio/fabric/sdk/android/services/b/e$1;->c:Lio/fabric/sdk/android/services/b/e;

    iget-object v1, v1, Lio/fabric/sdk/android/services/b/e;->c:Lio/fabric/sdk/android/services/b/i;

    iget-object v2, p0, Lio/fabric/sdk/android/services/b/e$1;->a:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/lang/Object;)V

    .line 52
    iget-boolean v1, p0, Lio/fabric/sdk/android/services/b/e$1;->b:Z

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lio/fabric/sdk/android/services/b/e$1;->c:Lio/fabric/sdk/android/services/b/e;

    iget-object v1, v1, Lio/fabric/sdk/android/services/b/e;->c:Lio/fabric/sdk/android/services/b/i;

    invoke-interface {v1}, Lio/fabric/sdk/android/services/b/i;->rollFileOver()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lio/fabric/sdk/android/services/b/e$1;->c:Lio/fabric/sdk/android/services/b/e;

    iget-object v1, v1, Lio/fabric/sdk/android/services/b/e;->a:Landroid/content/Context;

    const-string v2, "Failed to record event."

    invoke-static {v1, v2, v0}, Lio/fabric/sdk/android/services/common/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
