.class Lcn/sharesdk/framework/f$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/f;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/f;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/f;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcn/sharesdk/framework/f$1;->a:Lcn/sharesdk/framework/f;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 151
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 152
    iget-object v1, p0, Lcn/sharesdk/framework/f$1;->a:Lcn/sharesdk/framework/f;

    invoke-virtual {v1}, Lcn/sharesdk/framework/f;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    iget-object v1, p0, Lcn/sharesdk/framework/f$1;->a:Lcn/sharesdk/framework/f;

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/f;->a(Ljava/util/HashMap;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcn/sharesdk/framework/f$1;->a:Lcn/sharesdk/framework/f;

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/f;->b(Ljava/util/HashMap;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
