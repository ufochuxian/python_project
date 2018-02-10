.class public Lcom/jiliguala/niuwa/common/util/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Lcom/jiliguala/niuwa/logic/t/a;->a()Lcom/jiliguala/niuwa/logic/t/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/t/a;->a(Lcom/jiliguala/niuwa/common/a/i;)V

    .line 51
    return-void
.end method

.method public static a(Landroid/support/v4/app/ag;Landroid/support/v4/app/Fragment;Landroid/app/Activity;)V
    .locals 2
    .param p0, "fragmentManager"    # Landroid/support/v4/app/ag;
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 20
    invoke-static {}, Lcom/jiliguala/niuwa/logic/t/a;->a()Lcom/jiliguala/niuwa/logic/t/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/logic/t/a;->a(Landroid/support/v4/app/ag;)V

    .line 21
    invoke-static {}, Lcom/jiliguala/niuwa/logic/t/a;->a()Lcom/jiliguala/niuwa/logic/t/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/common/util/c/a$1;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/common/util/c/a$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/t/a;->a(Lcom/jiliguala/niuwa/logic/t/a/a;)V

    .line 31
    invoke-static {}, Lcom/jiliguala/niuwa/logic/t/a;->a()Lcom/jiliguala/niuwa/logic/t/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/common/util/c/a$2;

    invoke-direct {v1, p1, p2}, Lcom/jiliguala/niuwa/common/util/c/a$2;-><init>(Landroid/support/v4/app/Fragment;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/t/a;->a(Lcom/jiliguala/niuwa/common/a/i;)V

    .line 47
    return-void
.end method
