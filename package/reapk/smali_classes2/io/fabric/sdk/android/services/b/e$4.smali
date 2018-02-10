.class Lio/fabric/sdk/android/services/b/e$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/services/b/e;->a()V
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
    .line 92
    .local p0, "this":Lio/fabric/sdk/android/services/b/e$4;, "Lio/fabric/sdk/android/services/b/e$4;"
    iput-object p1, p0, Lio/fabric/sdk/android/services/b/e$4;->a:Lio/fabric/sdk/android/services/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 96
    .local p0, "this":Lio/fabric/sdk/android/services/b/e$4;, "Lio/fabric/sdk/android/services/b/e$4;"
    :try_start_0
    iget-object v2, p0, Lio/fabric/sdk/android/services/b/e$4;->a:Lio/fabric/sdk/android/services/b/e;

    iget-object v1, v2, Lio/fabric/sdk/android/services/b/e;->c:Lio/fabric/sdk/android/services/b/i;

    .line 97
    .local v1, "prevStrategy":Lio/fabric/sdk/android/services/b/i;, "Lio/fabric/sdk/android/services/b/i<TT;>;"
    iget-object v2, p0, Lio/fabric/sdk/android/services/b/e$4;->a:Lio/fabric/sdk/android/services/b/e;

    iget-object v3, p0, Lio/fabric/sdk/android/services/b/e$4;->a:Lio/fabric/sdk/android/services/b/e;

    invoke-virtual {v3}, Lio/fabric/sdk/android/services/b/e;->b()Lio/fabric/sdk/android/services/b/i;

    move-result-object v3

    iput-object v3, v2, Lio/fabric/sdk/android/services/b/e;->c:Lio/fabric/sdk/android/services/b/i;

    .line 98
    invoke-interface {v1}, Lio/fabric/sdk/android/services/b/i;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v1    # "prevStrategy":Lio/fabric/sdk/android/services/b/i;, "Lio/fabric/sdk/android/services/b/i<TT;>;"
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lio/fabric/sdk/android/services/b/e$4;->a:Lio/fabric/sdk/android/services/b/e;

    iget-object v2, v2, Lio/fabric/sdk/android/services/b/e;->a:Landroid/content/Context;

    const-string v3, "Failed to disable events."

    invoke-static {v2, v3, v0}, Lio/fabric/sdk/android/services/common/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
