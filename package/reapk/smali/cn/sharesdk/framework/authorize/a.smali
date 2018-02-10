.class public Lcn/sharesdk/framework/authorize/a;
.super Lcom/mob/tools/a;
.source "SourceFile"


# instance fields
.field protected a:Lcn/sharesdk/framework/authorize/AuthorizeHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/mob/tools/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcn/sharesdk/framework/authorize/AuthorizeHelper;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/a;->a:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    return-object v0
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeHelper;)V
    .locals 2

    .prologue
    .line 13
    iput-object p1, p0, Lcn/sharesdk/framework/authorize/a;->a:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    .line 14
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Lcom/mob/tools/a;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 15
    return-void
.end method

.method public show(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;

    .prologue
    .line 23
    const-string v0, "This method is deprecated, use show(AuthorizeHelper, Intent) instead"

    .line 24
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
