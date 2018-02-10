.class public Lcom/jiliguala/niuwa/common/util/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p0, "fraagment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 13
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    .line 14
    .local v2, "fm":Landroid/support/v4/app/ag;
    invoke-virtual {v2}, Landroid/support/v4/app/ag;->f()I

    move-result v0

    .line 15
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 17
    :try_start_0
    invoke-virtual {v2}, Landroid/support/v4/app/ag;->e()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :cond_0
    :goto_0
    return-void

    .line 18
    :catch_0
    move-exception v1

    .line 19
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
