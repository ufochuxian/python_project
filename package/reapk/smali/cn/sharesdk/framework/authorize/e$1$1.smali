.class Lcn/sharesdk/framework/authorize/e$1$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/authorize/e$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/authorize/e$1;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/authorize/e$1;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcn/sharesdk/framework/authorize/e$1$1;->a:Lcn/sharesdk/framework/authorize/e$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 136
    :try_start_0
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    .line 137
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    .line 142
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e$1$1;->a:Lcn/sharesdk/framework/authorize/e$1;

    iget-object v0, v0, Lcn/sharesdk/framework/authorize/e$1;->a:Lcn/sharesdk/framework/authorize/e;

    iget-object v0, v0, Lcn/sharesdk/framework/authorize/e;->a:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getAuthorizeListener()Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_0

    .line 144
    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    .line 146
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e$1$1;->a:Lcn/sharesdk/framework/authorize/e$1;

    iget-object v0, v0, Lcn/sharesdk/framework/authorize/e$1;->a:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e;->finish()V

    goto :goto_0
.end method
